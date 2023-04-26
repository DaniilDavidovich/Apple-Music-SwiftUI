//
//  SearchTextFieldView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI


struct SearchTextFieldView: View {
    
    // MARK: - Properties
    
    @Binding var text: String
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            TextField(Constant.placeholder, text: $text)
                .padding(.leading, 30)
                .frame(height: 12)
                .padding()
                .background(Color(UIColor.systemGray5))
                .cornerRadius(14)
                .padding(.horizontal, 20)
                .overlay(
                    HStack {
                        Image(systemName: Constant.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .padding(.leading, 30)
                            .foregroundColor(Color.gray)
                        
                        Spacer()
                    }
                )
        }
    }
}

fileprivate enum Constant {
    static let placeholder = "Artists, songs, texts and more..."
    static let image = "magnifyingglass"
}

