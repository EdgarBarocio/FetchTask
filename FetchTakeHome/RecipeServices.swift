//
//  RecipeServices.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/31/25.
//
import Foundation

class RecipeServices: APIService {
    func fetchRecipes(url: String) async throws -> Recipes? {

        if let url = URL(string: url) {
            do {
                let data = try await URLSession.shared.data(from: url)
                
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let result = try decoder.decode(Recipes.self, from: data.0)
                
                return result
            } catch {
                return nil
            }
            
        } else {
            return nil
        }
        
    }
}
