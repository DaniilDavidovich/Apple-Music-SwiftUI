//
//  MediaModel.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 11.04.23.
//

import Foundation

struct MediaModel: Identifiable, Hashable {
    let id: String
    let icon: String
    let title: String
    let isSelected: Bool
    
    init(
        id: String = UUID().uuidString,
        icon: String,
        title: String,
        isSelected: Bool
    ) {
        self.id = id
        self.icon = icon
        self.title = title
        self.isSelected = isSelected
    }
    
    func updateCompletion() -> MediaModel {
        MediaModel(
            id: id,
            icon: icon,
            title: title,
            isSelected: !isSelected
        )
    }
}
