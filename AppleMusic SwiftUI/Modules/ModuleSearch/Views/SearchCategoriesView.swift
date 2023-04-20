//
//  CategoriesView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 18.04.23.
//

import SwiftUI

struct SearchCategoriesView: View {
    
    @ObservedObject var model = SearchViewModel()
    
    var item = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Search on categories")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title2)
                    .bold()
            }
                
                
        LazyVGrid(columns: item, alignment: .leading) {
            
            ForEach(model.categoriesModel) { item in
                NavigationLink(destination: SearchDetailView()) {
                    
                    
                    VStack {
                        Rectangle()
                            .frame(height: 125)
                            .cornerRadius(13)
                        
                        Text(item.title)
                            .padding(.top, -40)
                            .foregroundColor(.white)
                        
                    }
                    .padding(.vertical, -4)
                }
            }
        }
    }
        .padding(.horizontal, 20)
        .padding(.bottom, 80)
        .edgesIgnoringSafeArea(.bottom)
}
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoriesView()
    }
}
