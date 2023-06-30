//
//  FeedView.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 22/06/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                // MARK: - xq lazyvstack y no stacks
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POST) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("InstagramLogo")
                        .resizable()
                        .frame(width: 100, height: 32)
                        
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                    imageScale(.large)
                        
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
