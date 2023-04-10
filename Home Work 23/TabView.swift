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
                Text("Item")
                Image(systemName: "media")
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewGroup()
    }
}
