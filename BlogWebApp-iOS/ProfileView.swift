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
            VStack {
                Text("Successfully selected ProfileView")
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
