//
//  LoginView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 26/01/25.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    @State private var isLoading = false
    private let baseURL = "https://blogs-api.w16manik.ninja" // Replace with your actual backend URL
    
    var body: some View {
        VStack(spacing: 20) {
            // Google Sign-In Button
            Button(action: {
                googleSignIn()
            }) {
                HStack {
                    Image("google-icon")
                        .resizable()
                        .frame(width: 36, height: 36)
                    Text("Sign in with Google")
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
            }
            
            // GitHub Sign-In Button
            Button(action: {
                githubSignIn()
            }) {
                HStack {
                    Image("github-icon")
                        .resizable()
                        .frame(width: 36, height: 36)
                    Text("Sign in with GitHub")
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .padding()
        .navigationTitle("Login")
    }
    
    private func googleSignIn() {
        isLoading = true
        guard let url = URL(string: "\(baseURL)/auth/google") else {
            print("Invalid URL")
            isLoading = false
            return
        }
        
        UIApplication.shared.open(url) { success in
            isLoading = false
            if !success {
                print("Failed to open Google sign-in URL")
            }
        }
    }
    
    private func githubSignIn() {
        isLoading = true
        guard let url = URL(string: "\(baseURL)/auth/github") else {
            print("Invalid URL")
            isLoading = false
            return
        }
        
        UIApplication.shared.open(url) { success in
            isLoading = false
            if !success {
                print("Failed to open GitHub sign-in URL")
            }
        }
    }
}

#Preview {
    LoginView()
}
