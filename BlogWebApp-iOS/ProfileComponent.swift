//
//  ProfileComponent.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 22/01/25.
//

import SwiftUI

struct ProfileComponent: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image(.manik)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .border(Color.gray, width: 3)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Manik Lakhanpal")
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("@w16manik")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Button {
                    } label: {
                        Text("Follow")
                            
                    }
                    .padding(.top, 5)
                    .buttonStyle(.borderless)
                    .controlSize(.small)
                }
                .padding(.leading)
                
                Spacer()
                
            }
            
            .padding(.leading)
            
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .padding(.bottom, 8)
                }
                .padding(.leading, 10)
            }
            
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
        
        Divider()
    }
}

#Preview {
    ProfileComponent()
}
