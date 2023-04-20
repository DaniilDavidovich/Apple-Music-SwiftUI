//
//  PlayerModalView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct PlayerModalView: View {
   
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            ImageView()
                .padding(.vertical, 90)
            DescriptionAndSliderView()

            PlayerButtonsView()
//                .padding(.top, 40)
            
            SliderVolueAndOtherVies()
        }
    }
}

struct PlayerModalView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerModalView()
    }
}
