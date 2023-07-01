//
//  ProfileView.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 22/06/23.
//

import SwiftUI

struct ProfileView: View {
    // MARK: - Input user data
    let user: User
   
    var post: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.fullname == user.fullname })
    }
    
    var body: some View {
            ScrollView {
                // MARK: - Hearder
                ProfileHeaderView(user: user)
                
                // MARK: - Post Grid view 
                PostGridView(posts: post)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[3])
    }
}
