//
//  Desscription Media Library.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct MediaTitle: View {
    var body: some View {
        VStack {
            
            Text(Texts.title)
                .font(.title)
                .bold()
            
            Text(Texts.description)
                .multilineTextAlignment(.center)
                .padding(1)
        }
    }
}

struct MediaTitle_Previews: PreviewProvider {
    static var previews: some View {
        MediaTitle()
    }
}

fileprivate enum Texts {
    static let title = "Looking for your music?"
    static let description = "The music you bought in the Itunes Store will appear here."
}
