//
//  SliderVolueAndOtherVies.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct SliderVolueAndOtherViews: View {
    
    @State private var value = 0.01
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(systemName: "speaker.fill")
                Slider(value: $value)
                    .accentColor(.red)
                Image(systemName: "speaker.wave.2.fill")
               
            
            }
            .foregroundColor(.gray)
            HStack(spacing: 100) {
                
                Button {
                    //
                } label: {
                    Image(systemName: "text.bubble")
                        .bold()
                        .font(.system(size: 20))
                }
                
                Button {
                    //
                } label: {
                    Image(systemName: "heart")
                        .font(.system(size: 22))
                }
                
                Button {
                    //
                } label: {
                    Image(systemName: "shuffle")
                        .font(.system(size: 22))
                }

            }
            
            .foregroundColor(.gray)
           
            .padding()
        }
        .padding()
    }
}

struct SliderVolueAndOtherViews_Previews: PreviewProvider {
    static var previews: some View {
        SliderVolueAndOtherViews()
    }
}
