//
//  SliderVolueAndOtherVies.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct SliderVolueAndOtherVies: View {
    
    @State private var value = 0.01
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(systemName: "speaker.fill")
                Slider(value: $value)
                Image(systemName: "speaker.wave.2.fill")
               
            
            }
            HStack(spacing: 100) {
                Image(systemName: "text.bubble")
                Image(systemName: "heart")
                Image(systemName: "shuffle")
            }
            .padding()
        }
        .padding()
    }
}

struct SliderVolueAndOtherVies_Previews: PreviewProvider {
    static var previews: some View {
        SliderVolueAndOtherVies()
    }
}
