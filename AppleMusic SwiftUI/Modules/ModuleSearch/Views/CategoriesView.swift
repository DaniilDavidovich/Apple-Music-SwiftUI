//
//  CategoriesView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 18.04.23.
//

import SwiftUI

struct CategoriesView: View {
    var item = [
        GridItem(.flexible())
    ]
    
    @State var data = ["me","me","me","me","me"]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: item) {
                ForEach(data, id: \.self) { item in
                    Rectangle()
                        .frame(width: 20, height: 20)
                }
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
