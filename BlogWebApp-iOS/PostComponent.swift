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
        VStack {
            HStack(alignment: .center) {
                
//                Image(.manik)
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .clipShape(Circle())
                AsyncImage(url: URL(string: "\(post.photo)")) { image in
                    image
                        .resizable()
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("\(post.name)")
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("@\(post.uid)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.leading)
                
                Spacer()
                
            }
            
            .padding(.leading)
            
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("\(post.content)")
                        .padding(.bottom, 8)
                    
                    Text("\(post.formattedCreatedAt)")
                    
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.leading, 10)
            }
            
            
            HStack(alignment: .center) {
                Label("" ,systemImage: "heart")
                Spacer()
                Label("" ,systemImage: "flag")
                Spacer()
                Label("" ,systemImage: "bookmark")
                Spacer()
                Label("" ,systemImage: "square.and.arrow.up")
            }
            .foregroundStyle(.secondary)
            .padding(.horizontal)
            .padding(.top, 10)
            
            
        }
        .padding(.vertical)
        
        Divider()
    }
}

//#Preview {
//    PostComponent(post: )
//}
