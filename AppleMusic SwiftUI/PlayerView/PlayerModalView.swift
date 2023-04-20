//
//  PlayerModalView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct PlayerModalView: View {
   
    
    var body: some View {
        VStack(alignment: .center) {
            ImageView()
            DescriptionAndSliderView()
        }
    }
}

struct PlayerModalView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerModalView()
    }
}
