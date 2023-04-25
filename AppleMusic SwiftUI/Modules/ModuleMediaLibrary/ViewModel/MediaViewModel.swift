//
//  MediaViewModel.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 12.04.23.
//

import Foundation


class MediaViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published var mediaModelArray = [MediaModel]()
    
    // MARK: - Init
    
    init() {
        getData()
    }
    
    // MARK: - Functions
    
    func getData() {
        let newData = [
            MediaModel(
                icon: "music.note.list",
                title: "Playlists",
                isSelected: false
            ),
            MediaModel(
                icon: "music.mic",
                title: "Artists",
                isSelected: false
            ),
            MediaModel(
                icon: "rectangle.stack",
                title: "Alboms",
                isSelected: false
            ),
            MediaModel(
                icon: "music.note",
                title: "Songs",
                isSelected: false
            ),
            MediaModel(
                icon: "tv",
                title: "Films",
                isSelected: false
            ),
            MediaModel(
                icon: "music.note.tv",
                title: "Videoclips",
                isSelected: false
            ),
            MediaModel(
                icon: "guitars",
                title: "Genres",
                isSelected: false
            ),
            MediaModel(
                icon: "person.2.crop.square.stack",
                title: "Collections",
                isSelected: false
            ),
            MediaModel(
                icon: "music.quarternote.3",
                title: "Autors",
                isSelected: false
            ),
        ]
        mediaModelArray.append(contentsOf: newData)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        mediaModelArray.move(fromOffsets: source, toOffset: destination)
    }
    
    func update(model: MediaModel) {
        if let index = mediaModelArray.firstIndex(where: { $0.id == model.id }) {
            mediaModelArray[index] = model.updateCompletion()
        }
    }
}
