//
//  Protocols.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/31/25.
//

import Foundation

protocol APIService {
    func fetchRecipes(url: String) async throws -> Recipes?
}

protocol ModelProtocol {
    func fetchRecipes(url: String) async
}
