//
//  HomeView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 21/01/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    HStack(alignment: .center) {
                        
                        Image(.manik)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Manik Lakhanpal")
                                .font(.title2)
                                .fontWeight(.medium)
                            Text("@w16manik")
                                .font(.subheadline)
                        }
                        .padding(.leading)
                        
                        Spacer()
                        
                    }
                    .padding(.leading)
                }
                .frame(width: .infinity)
            }
            .toolbar {
                CustomToolbar(
                    title: "Home",
                    imageName: "manik",
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
