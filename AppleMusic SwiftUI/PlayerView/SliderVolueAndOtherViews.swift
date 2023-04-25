//
//  SliderVolueAndOtherVies.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI


struct SliderVolueAndOtherViews: View {
    
    // MARK: - Properties
    
    @State private var value = 0.01
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(systemName: Images.speaker)
                Slider(value: $value)
                    .accentColor(.red)
                Image(systemName: Images.speakerWave)
            }
            .foregroundColor(.gray)
            
            HStack(spacing: 100) {
                
                Button {
                    // Clear Action
                } label: {
                    Image(systemName: Images.text)
                        .bold()
                        .font(.system(size: 20))
                }
                
                Button {
                    // Clear Action
                } label: {
                    Image(systemName: Images.heart)
                        .font(.system(size: 22))
                }
                
                Button {
                    // Clear Action
                } label: {
                    Image(systemName: Images.shuffle)
                        .font(.system(size: 22))
                }
            }
            .foregroundColor(.gray)
            .padding()
        }
        .padding()
    }
}

fileprivate enum Images {
    static let speaker = "speaker.fill"
    static let speakerWave = "speaker.wave.2.fill"
    static let heart = "heart"
    static let shuffle = "shuffle"
    static let text = "text.bubble"
}

struct SliderVolueAndOtherViews_Previews: PreviewProvider {
    static var previews: some View {
        SliderVolueAndOtherViews()
    }
}
