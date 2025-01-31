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
                .safeAreaPadding(.top, 20)
                
                .onAppear {
                    Task {
                        posts = await getPosts()
                    }
                }
            }
            .refreshable {
                posts = await getPosts()
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
