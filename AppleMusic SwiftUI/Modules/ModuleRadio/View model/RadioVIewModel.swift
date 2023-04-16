//
//  RadioVIewModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import Foundation

class RadioViewModel: ObservableObject {
   
    @Published var dataShows = [RadioModel]()
    @Published var dataStations = [RadioModel]()
    
    init() {
        newDataShows()
        newDataStations()
    }
    
    func newDataShows() {
        let newData = [
            RadioModel(
                header: "Exclusive",
                name: "Radio Show Collection Beats 1",
                descrioption: "New show",
                image: "beats-radio"
            ),
            RadioModel(
                header: "Listen now",
                name: "Queen radio",
                descrioption: "Nicki Minaj",
                image: "queen-radio"
            ),
            RadioModel(
                header: "Listen now",
                name: "African radi with Cuppy",
                descrioption: "Olamide is our first guest",
                image: "africa-radio"
            ),
            RadioModel(
                header: "Favorite Radiostantion",
                name: "Hip-Hop radio",
                descrioption: "Perfect bits and rhymes",
                image: "hip-hop-radio"
            ),
            RadioModel(
                header: "Favorite Radiostantion",
                name: "Pop music only",
                descrioption: "All top hits",
                image: "pop-radio"
            ),
            RadioModel(
                header: "Exclusive",
                name: "Vibrant Latin music",
                descrioption: "Modern hits",
                image: "latino-radio"
            ),
            RadioModel(
                header: "Exclusive",
                name: "Sound System",
                descrioption: "Hits of tomorrow",
                image: "audiosystem-radio"
            )
        ]
        
        self.dataShows.append(contentsOf: newData)
    }
    
    func newDataStations() {
        let newData = [
            RadioModel(
                header: nil,
                name: "Popular",
                descrioption: "Listening right now",
                image: "top-music"
            ),
            RadioModel(
                header: nil,
                name: "Music for relax",
                descrioption: "Electronic Meditation.",
                image: "relax-music"
            ),
            RadioModel(
                header: nil,
                name: "Classic",
                descrioption: "Outstanding examples of the genre.",
                image: "classic-music"
            ),
            RadioModel(
                header: nil,
                name: "Music for dance",
                descrioption: "Listen and dance.",
                image: "dance-music"
            )
        ]
        dataStations.append(contentsOf: newData)
    }
}
