//
//  HFeaturedPlaylistView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI


struct SearchDetailMainView: View {
    
    // MARK: - Properties
    
    var data: [SearchModel]
    
    @State var rows = [
        GridItem(.flexible())
    ]
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, content: {
                ForEach(data) { data in
                    VStack(alignment: .leading) {
                        Text(Constants.textTitle)
                            .foregroundColor(.gray)
                            .font(.footnote)
                            .textCase(.uppercase)
                            .padding(.bottom, -7)
                        
                        Text(data.description ?? Constants.error)
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
        }
    }
}

fileprivate enum Constants {
    static let textTitle = "Featured Playlist"
    static let error = "Error"
}

