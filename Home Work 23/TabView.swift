//
//  TabView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct TabViewGroup: View {
    var body: some View {
        TabView {
            
            MediaLibrary()
            .tabItem {
                Text("Media Library")
                Image(systemName: "music.note.list")
            }
            
            Text("Radio")
                .tabItem {
                    Text("Radio")
                    Image(systemName: "dot.radiowaves.left.and.right")
                }
            
            Text("Search")
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }
        }
        .accentColor(.red)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewGroup()
    }
}
