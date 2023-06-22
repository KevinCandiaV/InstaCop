//
//  SearchView.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 22/06/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach (0 ... 15, id: \.self) { user in
                        HStack {
                            Image("profileSP")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            VStackLayout(alignment: .leading) {
                                Text("spiderman")
                                    .fontWeight(.semibold)
                                
                                Text("Peter Parker")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
