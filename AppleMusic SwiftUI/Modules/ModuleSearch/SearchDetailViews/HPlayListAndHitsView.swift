//
//  HPlayListAndHitsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct HPlayListAndHitsView: View {
    
    @State var rows = [
        GridItem(.flexible())
    ]
    
    var data: SearchViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Me")
                .font(.title2)
                .bold()
                .padding(.leading, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(data.categoriesModel) { data in
                        VStack {
                            Image(data.image)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(15)
                            Text("1")
                            Text("2")
                        }
                        
                    }
                    
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct HPlayListAndHitsView_Previews: PreviewProvider {
    static var previews: some View {
        HPlayListAndHitsView(data: SearchViewModel())
    }
}
