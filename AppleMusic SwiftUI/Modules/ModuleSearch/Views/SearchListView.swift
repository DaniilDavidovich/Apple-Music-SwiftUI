//
//  SearchListView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 19.04.23.
//

import SwiftUI

struct SearchListView: View {
    
    @ObservedObject var data = SearchDetailViewModel()
    @State private var selectedSide = 0
    
    var body: some View {
        VStack {
            SearchPickerView(selectedSide: $selectedSide)
                .padding(.horizontal, 20)
            if selectedSide == 0 {
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
            } else {
                Text("Fatall Error Loading View")
                    .padding(.top, 100)
                    .foregroundColor(.gray)
                Spacer()
            }
        }
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
