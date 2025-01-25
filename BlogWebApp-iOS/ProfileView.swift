//
//  ProfileView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 21/01/25.
//

import SwiftUI

struct ProfileView: View {
    @State var posts: [Post] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0.0) {
                ProfileComponent()
                
                // Bleow is the scroll view for the posts related to the user
                ScrollView {
                    LazyVStack {
                        ForEach(posts, id: \.self) { post in
                            PostComponent(post: post)
                        }
                    }
                }
            }
            .onAppear {
                Task {
                    let (data, _) = try await URLSession.shared.data(from: URL(string: "https://blogs-api.w16manik.ninja/posts")!)
                    posts = try JSONDecoder().decode([Post].self, from: data)
                }
            }
            .toolbar {
                CustomToolbar(
                    title: "Profile",
                    imageName: nil,
                    onImageTap: {
                        print("Image tapped!")
                    }
                )
            }
        }
    }
}

#Preview {
    ProfileView()
}
