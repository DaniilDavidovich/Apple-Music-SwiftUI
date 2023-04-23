//
//  SearchDetailViewModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import Foundation

class SearchDetailViewModel: ObservableObject {
    
    @Published var mainViewModel = [SearchModel]()
    @Published var playlistAdditionalViewModel = [SearchModel]()
    @Published var hitsAdditionalViewModel = [SearchModel]()
    @Published var albomsAdditionalViewModel = [SearchModel]()
    
    init() {
        getMainViewModel()
        getPlaylistAdditionalViewModel()
        getHitsAdditionalViewModel()
        getAlbomsAdditionalViewModel()
    }
    
    func getMainViewModel() {
        let newData = [
          
            SearchModel(title: "Pop Caramel",
                        description: "Russian Pop",
                        image: "popCaramel-detailMainView"),
            
            SearchModel(title: "Pop In Russian Essentials",
                        description: "Russian Pop",
                        image: "popInRussianEssentials-detailMainView"),
            
            SearchModel(title: "Red Carpet",
                        description: "Russian Pop",
                        image: "redCarpet-detailMainView"),
            
            SearchModel(title: "Vinyl #2",
                        description: "Zivert",
                        image: "vinyl#2-detailMainView"),
            
            SearchModel(title: "Millenium X",
                        description: "Artik & Asti",
                        image: "milleniumX-detailMainView"),
            
        ]
        mainViewModel.append(contentsOf: newData)
    }
    
    func getPlaylistAdditionalViewModel() {
        let newData = [
            
            SearchModel(title: "I Miss Russia Super Hits",
                        description: "Apple Russia",
                        image: "iMissRussia-additionalPlayslists"),
            
            SearchModel(title: "Soviet Movie Songs",
                        description: "Apple Russia",
                        image: "sovietMovieSongs-additionalPlayslists"),
            
            SearchModel(title: "Pop Wave",
                        description: "Apple Russia",
                        image: "popWave-additionalPlayslists"),
            
            SearchModel(title: "Pop Workout in Russia",
                        description: "Apple Russia",
                        image: "popWorkout-additionalPlayslists"),
            
            SearchModel(title: "Russian Love Songs",
                        description: "Apple Russia",
                        image: "russianLoveSongs-additionalPlayslists"),
            
        ]
        playlistAdditionalViewModel.append(contentsOf: newData)
    }
    
    func getHitsAdditionalViewModel() {
        let newData = [
            
            SearchModel(title: "10's Pop In Russian",
                        description: "Apple Music 2010s",
                        image: "10's-additionalHits"),
            
            SearchModel(title: "00's Pop In Russian",
                        description: "Apple Music 2000s",
                        image: "00's-additionalHits"),
            
            SearchModel(title: "90's Pop In Russian",
                        description: "Apple Music 90's",
                        image: "90's-additionalHits"),
            
            SearchModel(title: "80's Pop In Russian",
                        description: "Apple Music 80's",
                        image: "80's-additionalHits"),
            
        ]
        hitsAdditionalViewModel.append(contentsOf: newData)
    }
    
    func getAlbomsAdditionalViewModel() {
        let newData = [
            SearchModel(title: "Millenium X",
                        description: "Artik & Asti",
                        image: "maleniumX-additionalAlboms"),
            
            SearchModel(title: "Anima",
                        description: "The Limba",
                        image: "anima-additionalAlboms"),
            
            SearchModel(title: "Sverhnova",
                        description: "Suzanna",
                        image: "sverhnova-additionalAlboms"),
            
            SearchModel(title: "Vinyl #2",
                        description: "Zivert",
                        image: "vinyl#2-additionalAlboms"),
            
            SearchModel(title: "Tribiut",
                        description: "Varioust Artists",
                        image: "tribiut-additionalAlboms"),
        ]
        albomsAdditionalViewModel.append(contentsOf: newData)
    }
}
