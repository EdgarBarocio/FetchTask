//
//  FetchTakeHomeApp.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/26/25.
//

import SwiftUI

@main
struct FetchTakeHomeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: RecipeViewModel(service: RecipeServices()))
        }
    }
}
