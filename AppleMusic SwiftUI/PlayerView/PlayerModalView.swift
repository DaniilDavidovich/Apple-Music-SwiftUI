//
//  PlayerModalView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct PlayerModalView: View {
   
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 10) {
                Rectangle()
                    .foregroundColor(Color(UIColor.systemGray5))
                    .frame(width: 50, height: 10)
                    .cornerRadius(10)
                    
                
                ImageView()
                    .padding(.vertical, 100)
                
                DescriptionAndSliderView()
                
                PlayerButtonsView()
                
                SliderVolueAndOtherViews()
            }
            .padding(.vertical, geometry.size.height * 0.01)
        }
    }
}

struct PlayerModalView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerModalView()
    }
}
