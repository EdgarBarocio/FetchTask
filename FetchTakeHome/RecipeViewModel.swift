//
//  RecipeViewModel.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/31/25.
//

import Foundation
import SwiftUI

class RecipeViewModel: ObservableObject {
    private let service: RecipeServices
    
    @Published private(set) var state: State<Recipes> = .idle
    
    init(service: RecipeServices) {
        self.service = service

    }
    
    func fetchRecipes(url: String) async {
        do {
            guard let result = try await service.fetchRecipes(url: url) else {
                state = .error(Error.self as! Error)
                return
            }
            
            state = .loaded(result)
        } catch {
            state = .error(error)
        }
    }
}
 
