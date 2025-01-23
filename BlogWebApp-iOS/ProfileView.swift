//
//  ProfileView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 21/01/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0.0) {
                ProfileComponent()
                
                ScrollView {
                    LazyVStack {
                        ForEach(0..<20, id: \.self) { _ in
                            PostComponent()
                        }
                    }
                }
            }
            .toolbar {
                CustomToolbar(
                    title: "Profile",
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
    ProfileView()
}
