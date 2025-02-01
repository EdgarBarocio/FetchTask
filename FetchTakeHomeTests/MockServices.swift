//
//  MocServices.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/31/25.
//

import Testing
@testable import FetchTakeHome
import Foundation

class MockServices: APIService {
    func fetchRecipes(url: String) async throws -> FetchTakeHome.Recipes? {
        let response = Bundle.main.decode(FetchTakeHome.Recipes.self, from: url)
        
        return response
    }
}

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T? {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            return nil
        }

        return loaded
    }
}

