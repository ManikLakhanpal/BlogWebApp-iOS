//
//  SettingsView.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 23/01/25.
//

import SwiftUI

struct SettingsView: View {
    @State private var username: String = ""
    var body: some View {
        VStack {
            Text("Name")
            TextField(
                    "User name (email address)",
                    text: $username
                )
        }
    }
}

#Preview {
    SettingsView()
}
