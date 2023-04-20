//
//  ImageView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("anima-additionalAlboms")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .cornerRadius(15)
            .shadow(color: Color(UIColor.systemGray), radius: 8, y: 4)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
