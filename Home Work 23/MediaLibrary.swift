//
//  ContentView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct MediaLibrary: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibrary()
    }
}
