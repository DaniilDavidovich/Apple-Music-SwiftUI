//
//  SearchView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI


struct SearchView: View {
    
    // MARK: - Properties
    
    @State var flag = false
    @State var searchText = ""
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            VStack {
                if !flag {
                    SearchTextFieldView(text: $searchText)
                        .onTapGesture {
                            flag = true
                            
                        }
                    
                    SearchCategoriesView()
                } else {
                    SearchListView(flag: $flag)
                }
            }
            .navigationBarTitle(Constants.navTitle)
            .padding(.bottom, 70)
        }
    }
}

fileprivate enum Constants {
    static let navTitle = "Search"
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
