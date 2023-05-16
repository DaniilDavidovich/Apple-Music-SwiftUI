//
//  MediaModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 11.04.23.
//

import Foundation


struct MediaModel: Identifiable, Hashable {
    
    // MARK: - Properties
    
    let id: String
    let icon: String
    let title: String
    let isSelected: Bool
    
    // MARK: - Init
    
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
    
    // MARK: - Functions
    
    func updateCompletion() -> MediaModel {
        MediaModel(
            id: id,
            icon: icon,
            title: title,
            isSelected: !isSelected
        )
    }
}
