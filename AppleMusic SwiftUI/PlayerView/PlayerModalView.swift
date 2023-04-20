//
//  PlayerModalView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct PlayerModalView: View {
   
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Rectangle()
                .foregroundColor(Color(UIColor.systemGray5))
                .frame(width: 50, height: 10)
                .cornerRadius(10)
                .padding(.bottom)
            ImageView()
                .padding(.vertical, 30)
            DescriptionAndSliderView()

            PlayerButtonsView()
//                .padding(.top, 40)
            
            SliderVolueAndOtherViews()
        }
    }
}

struct PlayerModalView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerModalView()
    }
}
