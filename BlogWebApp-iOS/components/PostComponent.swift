//
//  PostComponent.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 22/01/25.
//

import SwiftUI

struct PostComponent: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            HStack(alignment: .center, spacing: 12) {
                // Async image handling
                AsyncImage(url: URL(string: "\(post.photo)")) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .frame(width: 50, height: 50)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(post.name)")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("@\(post.uid)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("\(post.content)")
                    .font(.body)
                
                Text("\(post.formattedCreatedAt)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal)
            
            HStack {
                Label("", systemImage: "heart")
                Spacer()
                Label("", systemImage: "flag")
                Spacer()
                Label("", systemImage: "bookmark")
                Spacer()
                Label("", systemImage: "square.and.arrow.up")
            }
            .foregroundStyle(.secondary)
            .padding(.horizontal)
            .padding(.top, 10)
            
            Divider()
                .padding(.vertical)
        }
    }
}

//#Preview {
//    PostComponent(post: )
//}
