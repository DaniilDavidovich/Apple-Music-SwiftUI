//
//  Desscription Media Library.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct DesscriptionMediaLibrary: View {
    var body: some View {
        VStack {
            
            Text("Looking for your music?")
                .font(.title)
                .bold()
            
            Text("The music you bought in the Itunes Store will appear here.")
                .multilineTextAlignment(.center)
                .padding(1)
        }
    }
}

struct DesscriptionMediaLibrary_Previews: PreviewProvider {
    static var previews: some View {
        DesscriptionMediaLibrary()
    }
}
