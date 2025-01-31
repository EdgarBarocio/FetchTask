//
//  ContentView.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/26/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: RecipeViewModel
    
    var body: some View {
        
        Form {
            switch viewModel.state {
            case .idle:
                Text("Let's fetch data")
            case .loaded(let t):
                ForEach(t.recipes, id: \.self) { item in
                    RecipeInfoCell(item: item)
                }
            case .loading:
                ProgressView()
            case .error(let error):
                Text(error)
            }
            
            Button(action:{
                Task {
                    await viewModel.fetchRecipes(url: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json")
                }
            }, label: {
                Text("Let's Fetch Again")
            }).frame(maxWidth: .infinity, alignment: .center)
            
            Button(action:{
                Task {
                    await viewModel.fetchRecipes(url: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-empty.json")
                }
            }, label: {
                Text("Let's Fetch an Empty List")
            }).frame(maxWidth: .infinity, alignment: .center)
            Button(action:{
                Task {
                    await viewModel.fetchRecipes(url: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-malformed.json")
                }
            }, label: {
                Text("Let's Fetch a Malformed List")
            }).frame(maxWidth: .infinity, alignment: .center)
            
        } .task {
            await viewModel.fetchRecipes(url: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json")
        }
    }
}

#Preview {
    ContentView(viewModel: RecipeViewModel(service: RecipeServices()))
}
