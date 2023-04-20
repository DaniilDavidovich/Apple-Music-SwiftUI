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
                //
            } label: {
                Image(systemName: "backward.fill")
            }
            Button {
                //
            } label: {
                Image(systemName: "play.fill")
                    .font(.system(size: 45))
            }
            Button {
                //
            } label: {
                Image(systemName: "forward.fill")
            }
        }
        .foregroundColor(Color(UIColor.systemGray3))
        .font(.largeTitle)
        
    }
}

struct PlayerButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerButtonsView()
    }
}
