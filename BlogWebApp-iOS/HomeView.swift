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
                Text("Successfully selected HomeView")
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
