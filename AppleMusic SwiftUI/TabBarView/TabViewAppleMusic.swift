//
//  TabView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct TabViewAppleMusic: View {
   
    var body: some View {
        ZStack {
            TabView {
                
                MediaView()
                .tabItem {
                    Text(Constants.titleMedia)
                    Image(systemName: Images.iconMedia)
                }
                
                RadioView()
                    .tabItem {
                        Text(Constants.titleRadio)
                        Image(systemName: Images.iconRadio)
                    }
                
                SearchView()
                    .tabItem {
                        Text(Constants.titleSearch)
                        Image(systemName: Images.iconSearch)
                    }
            }
            .accentColor(.red)
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor.systemGray6

            }
            
            .safeAreaInset(edge: .bottom) {
                PlayerView()
        }
        }
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
