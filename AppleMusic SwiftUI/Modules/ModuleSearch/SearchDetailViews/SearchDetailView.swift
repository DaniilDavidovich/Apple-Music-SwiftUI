//
//  SearchDetailView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct SearchDetailView: View {
    
    @State var grid = [
        GridItem(.flexible())
    ]
    
    @ObservedObject var data = SearchViewModel()
    
    var body: some View {
        
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    MainView(data: data)
                    AdditionalView(data: data)
                    AdditionalView(data: data)
                    AdditionalView(data: data)
                }
        }
        .padding(.bottom, 80)
        .navigationBarTitle("Me")
    }
}


struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView()
    }
}
