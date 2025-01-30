//
//  CustomToolbar.swift
//  BlogWebApp-iOS
//
//  Created by Manik Lakhanpal on 21/01/25.
//

import SwiftUI

struct CustomToolbar: ToolbarContent {
    let title: String
    let imageName: String?
    let onImageTap: () -> Void
    
    let paddingVal = 25.0
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy) 
        }
        
        if imageName != nil {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: onImageTap) {
                    Image(imageName ?? "")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .clipShape(Capsule())
                }
            }
        }
        
    }
}
