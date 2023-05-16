//
//  PlayerButtonsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI


struct PlayerButtonsView: View {
    var body: some View {
        HStack(spacing: 80) {
            Button {
                // Clear Active
            } label: {
                Image(systemName: Images.backward)
            }
            
            Button {
                // Clear Active
            } label: {
                Image(systemName: Images.play)
                    .font(.system(size: 45))
            }
            
            Button {
                // Clear Active
            } label: {
                Image(systemName: Images.forward)
            }
        }
        .foregroundColor(Color(UIColor.systemGray3))
        .font(.largeTitle)
    }
}

fileprivate enum Images {
    static let backward = "backward.fill"
    static let play = "play.fill"
    static let forward = "forward.fill"
}

struct PlayerButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerButtonsView()
    }
}
