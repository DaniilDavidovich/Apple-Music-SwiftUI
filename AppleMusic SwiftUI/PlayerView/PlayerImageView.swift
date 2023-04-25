//
//  ImageView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI


struct PlayerImageView: View {
    
    var image: String?
    
    var body: some View {
        Image(image ?? "Music")
            .resizable()
            .scaledToFill()
            .frame(width: 250, height: 250)
            .cornerRadius(15)
            .shadow(color: Color(UIColor.systemGray), radius: 7, y: 1)
    }
}
