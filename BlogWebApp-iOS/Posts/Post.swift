//
//  Post.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 30/01/25.
//

import Foundation

struct Post: Codable, Hashable {
    let name: String
    let email: String
    let uid: String
    let content: String
    let photo: String
    let createdAt: Double
    let likes: [String]
    
    // Computed property to return the formatted createdAt value
    var formattedCreatedAt: String {
        return convertUnixTimeToDateString(unixTime: createdAt)
    }
}

func getPosts() async -> [Post] {
    
    var result = [Post]()
    
    do {
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://blogs-api.w16manik.ninja/posts")!)
        
        result = try JSONDecoder().decode([Post].self, from: data)
        
        return result
        
    } catch {
        print(error)
    }
    
    return result
    
}
