//
//  ContentView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Notifications Selected")
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            
            Text("Message Selected")
                .tabItem {
                    Label("Message", systemImage: "message")
                }

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
