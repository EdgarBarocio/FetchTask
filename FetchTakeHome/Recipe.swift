//
//  Recipe.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/26/25.
//

struct Recipes: Codable {
    var recipe: [RecipeItem]
}

struct RecipeItem: Codable {
    var cuisine: String
    var name: String
    var photoLarge: String
    var photoSmall: String
    var sourceURL: String
    var uuid: String
    var youtubeURL: String
    
    enum CodingKeys: String, CodingKey {
        case cuisine
        case name
        case photoLarge = "photo_url_large"
        case photoSmall = "photo_url_small"
        case sourceURL = "source_url"
        case uuid
        case youtubeURL = "youtube_url"
        
    }
    
#if DEBUG
    static let example = RecipeItem(cuisine: "Malaysian",
                                    name: "Apam Balik",
                                    photoLarge:  "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/large.jpg",
                                    photoSmall: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/small.jpg",
                                    sourceURL: "https://www.nyonyacooking.com/recipes/apam-balik~SJ5WuvsDf9WQ",
                                    uuid: "0c6ca6e7-e32a-4053-b824-1dbf749910d8",
                                    youtubeURL: "https://www.youtube.com/watch?v=6R8ffRRJcrg")
#endif
}
