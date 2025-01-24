//
//  Try.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 24/01/25.
//
import Foundation
import SwiftUI

struct Joke: Codable {
    let value: String
}

//struct Post: Codable {
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

struct Try: View {
    @State private var joke: String = ""
    var body: some View {
        Text(joke)
        Button {
            Task {
                let (data, _) = try await URLSession.shared.data(from: URL(string: "https://blogs-api.w16manik.ninja/posts")!)
                let posts = try JSONDecoder().decode([Post].self, from: data)
                joke = posts.first?.photo ?? "nil"
            }
        } label: {
            Text("\(convertUnixTimeToDateString(unixTime: 1737340942924))")
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
    Try()
}
