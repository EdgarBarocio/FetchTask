//
//  RecipeInfoCell.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/31/25.
//

import SwiftUI

struct RecipeInfoCell: View {
    let item: RecipeItem
    
    var body: some View {
        HStack {
// NOTE: Comment out CachingHelper implementation and uncomment AsyncImage implementation to switch between both systems. 
            CachingHelper(url: URL(string: item.photoUrlSmall ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
//            AsyncImage(url: URL(string: item.photoUrlSmall)) { phase in
//                switch phase {
//                    case .failure:
//                    Image(systemName: "photo")
//                        .font(.largeTitle)
//                    case .success(let image):
//                    image
//                        .resizable()
//                    default:
//                        ProgressView()
//                }
//            }
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 2))
                .frame(width: 75, height: 75)
            
            Text(item.name)
                .font(.headline)
            Spacer()
            Text(item.cuisine)
                .font(.caption)
                .padding()
        }
    }
}

#Preview {
    RecipeInfoCell(item: RecipeItem.example)
}
