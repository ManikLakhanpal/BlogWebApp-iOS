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
            ScrollView {
                LazyVStack {
                    ForEach(0..<20, id: \.self) { _ in
                        PostComponent()
                    }
                }
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
