//
//  ContentView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Hello, world!") {}
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
