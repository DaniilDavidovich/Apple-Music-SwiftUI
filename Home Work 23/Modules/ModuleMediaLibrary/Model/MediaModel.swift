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

extension MediaModel {
    static let getModel = [
        MediaModel(icon: "music.note.list", title: "Playlists", isSelected: false),
        MediaModel(icon: "music.mic", title: "Artists", isSelected: false),
        MediaModel(icon: "rectangle.stack", title: "Alboms", isSelected: false),
        MediaModel(icon: "music.note", title: "Songs", isSelected: false),
        MediaModel(icon: "tv", title: "Films", isSelected: false),
        MediaModel(icon: "music.note.tv", title: "Videoclips", isSelected: false),
        MediaModel(icon: "guitars", title: "Genres", isSelected: false),
        MediaModel(icon: "person.2.crop.square.stack", title: "Collections", isSelected: false),
        MediaModel(icon: "music.quarternote.3", title: "Autors", isSelected: false),
    ]
}
