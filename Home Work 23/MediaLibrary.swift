//
//  ContentView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct MediaLibrary: View {
    var body: some View {
        
        var flag = false
        
        NavigationView {
            VStack {
            }
            
            .navigationBarTitle("Media Library")
            
            .navigationBarItems(
                trailing: Button("Edit", action: {
                    if flag {
                        
                    } else {
                        
                    }
                })
                .foregroundColor(.red)
            )
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibrary()
    }
}
