//
//  RadioVIewModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import Foundation


class RadioViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published var dataShows = [RadioModel]()
    @Published var dataStations = [RadioModel]()
    
    // MARK: - Init
    
    init() {
        newDataShows()
        newDataStations()
    }
    
    // MARK: - Functions
    
    func newDataShows() {
        let newData = [
            RadioModel(
                header: "Exclusive",
                title: "Radio Show Collection Beats 1",
                descrioption: "New show",
                image: "beats-radio"
            ),
            RadioModel(
                header: "Listen now",
                title: "Queen radio",
                descrioption: "Nicki Minaj",
                image: "queen-radio"
            ),
            RadioModel(
                header: "Listen now",
                title: "African radi with Cuppy",
                descrioption: "Olamide is our first guest",
                image: "africa-radio"
            ),
            RadioModel(
                header: "Favorite Radiostantion",
                title: "Hip-Hop radio",
                descrioption: "Perfect bits and rhymes",
                image: "hip-hop-radio"
            ),
            RadioModel(
                header: "Favorite Radiostantion",
                title: "Pop music only",
                descrioption: "All top hits",
                image: "pop-radio"
            ),
            RadioModel(
                header: "Exclusive",
                title: "Vibrant Latin music",
                descrioption: "Modern hits",
                image: "latino-radio"
            ),
            RadioModel(
                header: "Exclusive",
                title: "Sound System",
                descrioption: "Hits of tomorrow",
                image: "audiosystem-radio"
            )
        ]
        dataShows.append(contentsOf: newData)
    }
    
    func newDataStations() {
        let newData = [
            RadioModel(
                header: nil,
                title: "Popular",
                descrioption: "Listening right now.",
                image: "top-music"
            ),
            RadioModel(
                header: nil,
                title: "Music for relax",
                descrioption: "Electronic Meditation.",
                image: "relax-music"
            ),
            RadioModel(
                header: nil,
                title: "Classic",
                descrioption: "Outstanding examples of the genre.",
                image: "classic-music"
            ),
            RadioModel(
                header: nil,
                title: "Music for dance",
                descrioption: "Listen and dance.",
                image: "dance-music"
            )
        ]
        dataStations.append(contentsOf: newData)
    }
}
