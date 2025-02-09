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
            TryAPI()
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            
            // Currently work in progress
            LoginView()
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

func convertUnixTimeToDateString(unixTime: Double) -> String {
    let date = Date(timeIntervalSince1970: unixTime / 1000) // Convert milliseconds to seconds
    let dateFormatter = DateFormatter()
    
    // Set the desired date and time format
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .short
    dateFormatter.locale = Locale.current // Use the user's locale
    dateFormatter.timeZone = TimeZone.current
    
    let dateString = dateFormatter.string(from: date)
    return dateString
}

#Preview {
    ContentView()
}
