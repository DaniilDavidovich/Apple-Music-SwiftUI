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
           
            TextFieldView()
                
            .navigationBarTitle("Search")
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
