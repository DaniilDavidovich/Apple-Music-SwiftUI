//
//  TextFieldView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI

struct SearchTextFieldView: View {
    
    @State var text: String
    
    var body: some View {
        VStack {
               TextField("Artists, songs, texts and more...", text: $text)
                    .padding(.leading, 30)
                   .frame(height: 12)
                   .padding()
                   .background(Color(UIColor.systemGray5))
                   .cornerRadius(14)
                   .padding(.horizontal, 20)
                   .foregroundColor(.gray)
                   .overlay(
                       HStack {
                           Image(systemName:"magnifyingglass")
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

//struct TextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchTextFieldView()
//    }
//}
