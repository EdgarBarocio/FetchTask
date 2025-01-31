//
//  Recipe.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/26/25.
//

struct Recipes: Codable, Hashable {
    var recipes: [RecipeItem]
}

struct RecipeItem: Codable, Hashable {
    var cuisine: String
    var name: String
    var photoUrlLarge: String
    var photoUrlSmall: String
    var sourceUrl: String?
    var uuid: String
    var youtubeUrl: String?
    
#if DEBUG
    static let example = RecipeItem(cuisine: "Malaysian",
                                    name: "Apam Balik",
                                    photoUrlLarge:  "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/large.jpg",
                                    photoUrlSmall: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/small.jpg",
                                    sourceUrl: "https://www.nyonyacooking.com/recipes/apam-balik~SJ5WuvsDf9WQ",
                                    uuid: "0c6ca6e7-e32a-4053-b824-1dbf749910d8",
                                    youtubeUrl: "https://www.youtube.com/watch?v=6R8ffRRJcrg")
#endif
}
