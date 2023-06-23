//
//  LoginView.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 22/06/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var passsword = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                // MARK: - logo image
                Image("InstagramLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                // MARK: - Text fields
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $passsword)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                Button {
                    print("Show forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .cornerRadius(10)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                HStack {
                    
                }

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
