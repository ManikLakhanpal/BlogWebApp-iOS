//
//  Try.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 24/01/25.
//
import Foundation
import SwiftUI

//struct Post: Codable, Hashable {
//    let name: String
//    let email: String
//    let uid: String
//    let content: String
//    let photo: String
//    let createdAt: Double
//    let likes: [String]
//    
//    // Computed property to return the formatted createdAt value
//    var formattedCreatedAt: String {
//        return convertUnixTimeToDateString(unixTime: createdAt)
//    }
//}

struct TryAPI: View {
    @State var joke: [Post] = []
    @State private var showButton = true // Control visibility of the button
    
    var body: some View {
        VStack {
            ForEach(joke, id: \.self) { i in
                Text(i.name)
            }
            
            // Show the button only when needed
            if showButton {
                Button {
                    Task {
                        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://blogs-api.w16manik.ninja/posts")!)
                        let posts = try JSONDecoder().decode([Post].self, from: data)
                        joke = posts
                    }
                } label: {
                    Text("Fetch Joke")
                }
                .padding() // Styling for the button
            }
        }
    }
}

//func convertUnixTimeToDateString(unixTime: Double) -> String {
//    let date = Date(timeIntervalSince1970: unixTime / 1000) // Convert milliseconds to seconds
//    let dateFormatter = DateFormatter()
//    
//    // Set the desired date and time format
//    dateFormatter.dateStyle = .medium
//    dateFormatter.timeStyle = .short
//    dateFormatter.locale = Locale.current // Use the user's locale
//    dateFormatter.timeZone = TimeZone.current
//    
//    let dateString = dateFormatter.string(from: date)
//    return dateString
//}

#Preview {
    TryAPI()
}
