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
                    .padding(.leading, 20)
                    .padding(.bottom, -13)
                    .padding(.top)
                
                LazyVGrid(columns: item, alignment: .leading, spacing: 3) {
                    
                    ForEach(model.categoriesModel) { item in
                        NavigationLink(destination: SearchDetailView()) {
                            
                            VStack(alignment: .leading) {
                                Image(item.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width / 2 - 20, height: 125) // настройка ширины
                                    .cornerRadius(10)
                                
                                Text(item.title)
                                    .padding(.top, -40)
                                    .foregroundColor(Color.white)
                                    .padding(.leading)
                                    .bold()
                                
                            }
                            .padding(.vertical, -2)
                            .padding(.horizontal, 2)
                            
                        }
                        
                    }
                    
                }
                .padding()
            }
            
        }
    }
}


struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoriesView()
    }
}
