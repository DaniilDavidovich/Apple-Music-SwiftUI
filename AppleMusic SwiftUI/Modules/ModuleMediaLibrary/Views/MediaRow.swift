//
//  MediaRow.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 11.04.23.
//

import SwiftUI

struct MediaRow: View {
    
    let model: MediaModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: -10) {
            HStack {
                
                Image(systemName: model.isSelected ? Images.checkmarkFill : Images.circle)
                .resizable()
                .scaledToFit()
                .foregroundColor(model.isSelected ? Color.red : Color.gray)
                .frame(width: 22, height: 22)
                
                Image(systemName: model.icon)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.red)
                    .frame(width: 22, height: 22)
                    .padding(.horizontal, 15)
                
                Text(model.title)
                    .multilineTextAlignment(.leading)
            }
            
            Divider()
                .offset(y: 21)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.leading, 34)
        }
        .padding(.leading, 100)
    }
}

struct MediaRow_Previews: PreviewProvider {
    static var previews: some View {
        MediaRow.init(model: MediaModel(icon: Images.checkmarkFill, title: Constants.title, isSelected: false))
            .padding()
    }
}


fileprivate enum Constants {
    static let title = "Плейлисты"
}

fileprivate enum Images {
    static let checkmarkFill = "checkmark.circle.fill"
    static let circle = "circle"
    static let musicNote = "music.note.list"
}
