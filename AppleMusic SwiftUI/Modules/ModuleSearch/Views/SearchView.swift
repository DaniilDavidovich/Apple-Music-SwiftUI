//
//  SearchView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI

struct SearchView: View {
    
    @State var flag = false
    @State var searchText = String()
    
    var body: some View {
        NavigationView {
            VStack {
                if !flag {
                    
                    SearchTextFieldView(text: "")
                        .onTapGesture {
                            flag = true
                        }
                    
                    SearchCategoriesView()
                    
                } else {
                    HStack {
                        SearchTextFieldView(text: searchText)
                        Button("Cancel") {
                            withAnimation {
                                flag = false
                            }
                        }
                        .padding(.trailing, 20)
                        .foregroundColor(.red)
                        .bold()
                    }
                    SearchListView()
                }
            }
            .navigationBarTitle("Search")
            .padding(.bottom, 70)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
