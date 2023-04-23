//
//  SearchListView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 19.04.23.
//

import SwiftUI

struct SearchListView: View {
    
    @ObservedObject var data = SearchDetailViewModel()
    
    var body: some View {
        VStack {
            List() {
                ForEach(data.mainViewModel) { data in
                    HStack {
                        Image(data.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(10)
                            .scaledToFill()
                            .padding(.horizontal, 0)
                        VStack(alignment: .leading) {
                            Text(data.description ?? "Error")
                                .bold()
                            Text(data.title)
                                .foregroundColor(.gray)
                                
                        }
                        .padding(.leading)
                    }
                }
            }
            .listStyle(.plain)
        }
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
