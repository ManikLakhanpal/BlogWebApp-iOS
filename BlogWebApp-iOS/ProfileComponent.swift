//
//  ProfileComponent.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 22/01/25.
//

import SwiftUI

struct ProfileComponent: View {
    
    // Place holders below
    private var name: String = "Manik Lakhanpal"
    private var uid: String = "w16manik"
    private var bio: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    
    // Values to activate and change the view in this Profile Component
    @State private var following: Bool = false
    @State private var showSettings: Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                // Profile Picture of the user below
                Image(.manik)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .border(Color.gray, width: 3)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 0.0) {
                    // Name of the user below
                    Text(name)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    // uid of the user below
                    Text("@\(uid)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    // Follow and unfollow button below
                    Button {
                        print((following ? "Unfollow" : "Follow") + " clicked")
                        withAnimation {
                            following.toggle()
                        }
                    } label: {
                        Text(following ? "Unfollow" : "Follow")
                            .foregroundStyle(following ? .red : .blue)
                    }
                    .padding(.top, 5)
                    .buttonStyle(.borderless)
                    .controlSize(.small)
                }
                .padding(.leading)
                
                // Settings button below
                Button {
                    print("Settings clicked")
                    showSettings.toggle()
                } label : {
                    Label("", systemImage: "gearshape")
                }
                .foregroundStyle(.black)
                
                Spacer()
                
            }
            
            .padding(.leading)
            
            // Below is HStack for bio
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 0.0) {
                    Text(bio)
                        .padding(.bottom, 8)
                }
                .padding(.leading, 10)
            }
            
            // Below is Posts, Followers and Following counts
            HStack(alignment: .center, spacing: 10.0) {
                VStack {
                    Text("Posts")
                    Text("0")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                VStack {
                    Text("Followers")
                    Text("0")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                VStack {
                    Text("Following")
                    Text("0")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(.horizontal)
        }
        .padding(.vertical)
        .sheet(isPresented: $showSettings) {
            // TODO: Have to work on settings Sheet just like blogs
            SettingsView()
        }
        
        Divider()
    }
}

#Preview {
    ProfileComponent()
}
