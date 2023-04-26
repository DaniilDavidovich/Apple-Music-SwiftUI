//
//  ContentView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 11.04.23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabViewAppleMusic()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(
            [iPhones.iphone14Pro, iPhones.iphoneSE],
            id: \.self
        ) { deviceName in
            ContentView()
                .previewDevice(
                    PreviewDevice(rawValue: deviceName)
                )
                .previewDisplayName(deviceName)
        }
    }
}

fileprivate enum iPhones {
    static let iphone14Pro = "iPhone 14 Pro"
    static let iphoneSE = "iPhone SE (3rd generation)"
}
