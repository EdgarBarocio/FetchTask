//
//  RecipeViewModel.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/31/25.
//

import Foundation
import SwiftUI

class RecipeViewModel: ObservableObject, ModelProtocol {
    private let service: APIService
    
    @Published private(set) var state: State<Recipes> = .idle
    
    init(service: APIService) {
        self.service = service

    }
    
    @MainActor
    func fetchRecipes(url: String) async {
        state = .loading
        do {
           if let result = try await service.fetchRecipes(url: url) {
               if result.recipes.isEmpty {
                   state = .error("Data is empty")
               } else {
                   state = .loaded(result)
               }
           } else {
               state = .error("Data is malformed")
           }
            
        } catch {
            state = .error(error.localizedDescription)
        }
    }
}
 
