//
//  CurrentUserProfileView.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 29/06/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var post: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.fullname == user.fullname })
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // MARK: - Hearder
                ProfileHeaderView(user: user)
                
                // MARK: - Post Grid view
                PostGridView(posts: post)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}
