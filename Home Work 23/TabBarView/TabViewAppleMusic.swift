//
//  TabView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct TabViewAppleMusic: View {
    var body: some View {
        TabView {
            
            MediaView()
            .tabItem {
                Text(Constants.titleMedia)
                Image(systemName: Images.iconMedia)
            }
            
            Text("Radio")
                .tabItem {
                    Text(Constants.titleRadio)
                    Image(systemName: Images.iconRadio)
                }
            
            Text("Search")
                .tabItem {
                    Text(Constants.titleSearch)
                    Image(systemName: Images.iconSearch)
                }
        }
        .accentColor(.red)
    }
}

struct TabViewAppleMusic_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAppleMusic()
    }
}

fileprivate enum Constants {
    static let titleMedia = "Media Library"
    static let titleRadio = "Radio"
    static let titleSearch = "Search"
}

fileprivate enum Images {
    static let iconMedia = "play.square.stack.fill"
    static let iconRadio = "dot.radiowaves.left.and.right"
    static let iconSearch = "magnifyingglass"
}
