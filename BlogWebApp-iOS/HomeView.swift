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
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Parent View")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(.manik)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Capsule())
                    }
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
