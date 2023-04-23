//
//  ListView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 23.04.23.
//

import SwiftUI

struct ListView: View {
    
    var data = ["Me","Me","Me","Me","Me","Me","Me","Me",]
    var body: some View {
        List {
            ForEach(data, id: \.self) {  data in
                Text(data)
            }
        }
        .listStyle(.plain)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
