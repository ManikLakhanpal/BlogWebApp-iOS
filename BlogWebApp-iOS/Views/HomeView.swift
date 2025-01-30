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
                    posts = await getPosts()
                }
            }
            
            .refreshable {
                posts = await getPosts()
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
