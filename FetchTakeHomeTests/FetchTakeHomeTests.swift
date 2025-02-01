//
//  FetchTakeHomeTests.swift
//  FetchTakeHomeTests
//
//  Created by Edgar Barocio on 1/26/25.
//

import Testing
@testable import FetchTakeHome

struct FetchTakeHomeTests {
    var services: MockServices
    var sut: MockViewModel
    
    init() async throws {
        services = MockServices()
        sut = MockViewModel(services: services)
    }
    
    @Test("Recipe List Exists") func fetchRecipesList() async throws {
        let response = try await services.fetchRecipes(url: "response.json")
        #expect(response?.recipes.count ?? 0 > 0)
        await sut.fetchRecipes(url: "response.json")
        #expect(sut.resultSuccessful == true)
    }

    @Test("Recipe List is Malformed") func fetchMalformedRecipesList() async throws {
        let response = try await services.fetchRecipes(url: "malformed.json")
        #expect(response == nil)
        await sut.fetchRecipes(url: "malformed.json")
        #expect(sut.resultSuccessful == false)
    }
    
    @Test("Recipe List is Empty") func fetchEmptyTestsList() async throws {
        let response = try await services.fetchRecipes(url: "empty.json")
        #expect(response?.recipes.count ?? 0 == 0)
        await sut.fetchRecipes(url: "empty.json")
        #expect(sut.resultSuccessful == false)
    }
}
