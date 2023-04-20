//
//  HFeaturedPlaylistView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct HFeaturedPlaylistView: View {
    
    var data: SearchViewModel
    
    @State var rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, content: {
                ForEach(data.categoriesModel) { data in
                    
                    VStack(alignment: .leading) {
                        
                        Text(data.title)
                            .foregroundColor(.gray)
                            .font(.footnote)
                            .textCase(.uppercase)
                        
                        Text(data.description ?? "error")
                            .font(.title2)
                        
                        Spacer()
                            .frame(height: 3)
                        
                        Text(data.title)
                            .foregroundColor(.gray)
                            .font(.title3)
                        
                        Image(data.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 250)
                            .cornerRadius(5)
                    }
                }
            })
            .padding(20)
            .navigationBarTitle("Me")
        }
    }
    
    
}

struct HFeaturedPlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        HFeaturedPlaylistView(data: SearchViewModel())
    }
}
