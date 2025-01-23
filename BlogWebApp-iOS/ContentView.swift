//
//  ContentView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Different TabViews for different pages
        TabView {
            // Main View with all the posts
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            // Currently work in progress
            Text("Notifications Selected")
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            
            // Currently work in progress
            Text("Message Selected")
                .tabItem {
                    Label("Message", systemImage: "message")
                }
            
            // Profile of the current User is here
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
