//
//  CustomToolbar.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 21/01/25.
//

import SwiftUI

struct CustomToolbar: ToolbarContent {
    let title: String
    let imageName: String
    let onImageTap: () -> Void
    
    let paddingVal = 16.0
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.top, paddingVal)
        }
        
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: onImageTap) {
                Image(imageName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Capsule())
            }
            .padding(.top, paddingVal)
        }
    }
}
