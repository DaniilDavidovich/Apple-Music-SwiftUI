//
//  SearchView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    TextFieldView()
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                
                            }
                        }
                    Text("Search on categories")
                        .font(.title2)
                        .bold()
                        .padding(.leading, 22)
                        .padding(.top)
                    CategoriesView()
                    Spacer()
                    
                    
                    
                }
                .navigationBarTitle("Search")
                
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
