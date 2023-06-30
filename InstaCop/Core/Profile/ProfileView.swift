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
    // MARK: - Input for LazyGrid
    private let gridItems: [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
    ]
    var body: some View {
            ScrollView {
                // MARK: - Hearder
                VStack(spacing: 10) {
                    // MARK: - pic and stats
                    HStack {
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 3, title: "Post")
                            
                            UserStatView(value: 12, title: "Followers")
                            
                            UserStatView(value: 24, title: "Following")
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    // MARK: - name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // MARK: - action button
                    Button {
                        
                    } label: {
                        Text("Edit Profle")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1))
                    }
                    
                    Divider()
                }
                // MARK: - Post Grid view 
                
                LazyVGrid(columns: gridItems, spacing: 2) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("profilePost1")
                            .resizable()
                            .scaledToFill()
                    }
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[4])
    }
}
