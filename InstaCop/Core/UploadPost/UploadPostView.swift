//
//  UploadPostView.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 1/07/23.
//

import SwiftUI

struct UploadPostView: View {
    @State private var caption = ""
    var body: some View {
        VStack {
            // MARK: - Action tool bar
            HStack {
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }

            }
            .padding(.horizontal)
            // MARK: - Post image and caption
            HStack(spacing: 8) {
                Image("batmanPost1")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
                
            }
            
            Spacer()
        }
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
