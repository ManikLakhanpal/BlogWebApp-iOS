//
//  PostComponent.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 22/01/25.
//

import SwiftUI

struct PostComponent: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                
                Image(.manik)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Manik Lakhanpal")
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("@w16manik")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.leading)
                
                Spacer()
                
            }
            
            .padding(.leading)
            
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .padding(.bottom, 8)
                    
                    Text("20 Jan 2025, 8:12 am")
                    
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
        .border(.red)
    }
}

#Preview {
    PostComponent()
}
