//
//  PostGridView.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 1/07/23.
//

import SwiftUI

struct PostGridView: View {
    // MARK: - Input post data
    var posts: [Post]
    
    // MARK: - Input for LazyGrid
    private let gridItems: [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
    ]
    
    // MARK: - Dimensions for image
    private let imageDimensions = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        // MARK: - Post Grid view
        LazyVGrid(columns: gridItems, spacing: 2) {
            ForEach(posts) { post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimensions, height: imageDimensions)
                    .clipped()
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(posts: Post.MOCK_POST)
    }
}
