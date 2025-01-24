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

struct Try: View {
    @State private var joke: String = ""
    var body: some View {
        Text(joke)
        Button {
            Task {
                let (data, _) = try await URLSession.shared.data(from: URL(string: "https://api.chucknorris.io/jokes/random")!)
                let decoded = try? JSONDecoder().decode(Joke.self, from: data)
                joke = decoded?.value ?? "No joke"
            }
        } label: {
            Text("Fetch Joke")
        }
    }
}

#Preview {
    Try()
}
