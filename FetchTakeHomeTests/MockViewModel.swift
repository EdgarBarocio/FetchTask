//
//  MockViewModel.swift
//  FetchTakeHomeTests
//
//  Created by Edgar Barocio on 1/31/25.
//

import Foundation
@testable import FetchTakeHome

class MockViewModel: ModelProtocol {
    
    private let services: APIService
    public var resultSuccessful: Bool = false
    
    init(services: APIService) {
        self.services = services
    }
    func fetchRecipes(url: String) async {
        do {
            let result = try await services.fetchRecipes(url: url)
            if result?.recipes.count ?? 0 > 0 {
                resultSuccessful = true
            }
        } catch {
            
            resultSuccessful = false
        }
    }
    
    
}
