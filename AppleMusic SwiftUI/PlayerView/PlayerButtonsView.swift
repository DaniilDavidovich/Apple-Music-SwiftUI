//
//  PlayerButtonsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct PlayerButtonsView: View {
    var body: some View {
        HStack(spacing: 100) {
            Image(systemName: "backward.fill")
                .font(.largeTitle)
            Image(systemName: "play.fill")
                .font(.largeTitle)
            Image(systemName: "forward.fill")
                .font(.largeTitle)
        }
        .foregroundColor(Color(UIColor.systemGray3))
        
    }
}

struct PlayerButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerButtonsView()
    }
}
