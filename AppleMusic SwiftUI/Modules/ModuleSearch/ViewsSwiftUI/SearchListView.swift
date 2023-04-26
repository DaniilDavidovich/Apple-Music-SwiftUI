//
//  SearchListView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 19.04.23.
//

import SwiftUI


struct SearchListView: View {
    
    // MARK: - Properties
    
    @ObservedObject var dataViewModel = SearchDetailViewModel()
    @State private var selectedSide = 0
    @State private var text = ""
    @Binding var flag: Bool
    
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
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            HStack {
                SearchTextFieldView(text: $text)
                
                Button(Constants.cancel) {
                    withAnimation {
                        flag = false
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
                            Text(item.description ?? Constants.error)
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
                Text(Constants.fatalError)
                    .padding(.top, 100)
                    .foregroundColor(.gray)
                
                Spacer()
            }
        }
    }
}

fileprivate enum Constants {
    static let error = "Error"
    static let fatalError = "Fatal Error"
    static let cancel = "Cancel"
}
