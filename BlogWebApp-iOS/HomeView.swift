//
//  HomeView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 21/01/25.
//

import SwiftUI

struct HomeView: View {
    @State var posts: [Post] = []
    
    var body: some View {
        NavigationStack {
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
                    let (data, _) = try await URLSession.shared.data(from: URL(string: "https://blogs-api.w16manik.ninja/posts")!)
                    posts = try JSONDecoder().decode([Post].self, from: data)
                }
            }
            
            .refreshable {
                Task {
                    let (data, _) = try await URLSession.shared.data(from: URL(string: "https://blogs-api.w16manik.ninja/posts")!)
                    posts = try JSONDecoder().decode([Post].self, from: data)
                }
            }
            
            .toolbar {
                CustomToolbar(
                    title: "Home",
                    imageName: "Manik",
                    onImageTap: {
                        print("Image tapped!")
                    }
                )
            }
        }
    }
}

#Preview {
    HomeView()
}
