//
//  SearchListView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 19.04.23.
//

import SwiftUI

struct SearchListView: View {
    
    
    @ObservedObject var dataViewModel = SearchDetailViewModel()
    @State private var selectedSide = 0
    @State var text = ""
    
    var filteredData: [SearchModel] {
        
        let data = (
            dataViewModel.hitsAdditionalViewModel +
            dataViewModel.playlistAdditionalViewModel +
            dataViewModel.albomsAdditionalViewModel +
            dataViewModel.mainViewModel
        )
        
        if text.isEmpty {
            return data
        } else {
            return data.filter {"\($0)"
                .lowercased()
                .contains(
                    text.lowercased()
                )
            }
        }
    }
    
    
    var body: some View {
        
        VStack {
            HStack {
                SearchTextFieldView(text: $text)
                Button("Cancel") {
                    withAnimation {
//                        flag = false
                    }
                }
                .padding(.trailing, 20)
                .foregroundColor(.red)
                .bold()
            }
            
            SearchPickerView(selectedSide: $selectedSide)
                .padding(.horizontal, 20)
            if selectedSide == 0 {
                List(filteredData) { item in
                        HStack {
                            Image(item.image)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(10)
                                .scaledToFill()
                                .padding(.horizontal, 0)
                            VStack(alignment: .leading) {
                                Text(item.description ?? "Error")
                                    .bold()
                                Text(item.title)
                                    .foregroundColor(.gray)
                            }
                            .padding(.leading)
                        }
                    }
                
                .listStyle(.plain)
                .padding(.bottom, 0)
            } else {
                Text("Fatall Error Loading View")
                    .padding(.top, 100)
                    .foregroundColor(.gray)
                Spacer()
            }
        }
    }
}

//struct SearchListView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchListView()
//    }
//}
