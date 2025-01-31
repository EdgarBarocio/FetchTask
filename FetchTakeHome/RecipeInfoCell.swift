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
            AsyncImage(url: URL(string: item.photoSmall)!, scale: 3.5)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 2))
                .frame(width: 100, height: 100)
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
