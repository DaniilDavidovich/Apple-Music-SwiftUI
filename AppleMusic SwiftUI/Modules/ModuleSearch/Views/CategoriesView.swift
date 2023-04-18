//
//  CategoriesView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 18.04.23.
//

import SwiftUI

struct CategoriesView: View {
    
    
    @ObservedObject var model = SearchViewModel()
    
    var item = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: item, alignment: .leading) {
            ForEach(model.categoriesModel) { item in
                VStack {
                    Rectangle()
                        .frame(width: 180, height: 135)
                        .cornerRadius(20)
                        .padding()
                        .padding(.horizontal, 8)
                    Text(item.title)
                        .padding(.top, -50)
                        .foregroundColor(.white)
                    
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
