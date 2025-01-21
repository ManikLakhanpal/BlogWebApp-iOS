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
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Menu", systemImage: "person.crop.circle") {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
