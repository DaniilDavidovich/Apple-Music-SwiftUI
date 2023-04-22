//
//  PlayerModalView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct PlayerModalView: View {
    var body: some View {
        
        VStack {
            GeometryReader { geometry in
                    VStack(alignment: .center) {
                        Capsule()
                            .fill(Color(UIColor.systemGray2))
                            .frame(width: 40, height: 4)
                            .opacity(1)
                            .padding(.top)
                        
                        ImageView()
                            .padding(.top, geometry.size.height < 667 ? 20 : 80)
                        
                        DescriptionAndSliderView()
                            .padding(.top, geometry.size.height < 667 ? 20 : 80)
                        
                        PlayerButtonsView()
                            .padding(.top, geometry.size.height < 667 ? 10 : 15)
                        
                        SliderVolueAndOtherViews()
                            .padding(.top, geometry.size.height < 667 ? 10 : 20)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                   
            }
        }
     
    }
}



struct PlayerModalView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerModalView()
    }
}
