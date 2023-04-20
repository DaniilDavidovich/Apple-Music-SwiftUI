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
            SearchModel(title: "Millenium X",
                        description: "Artik & Asti",
                        image: "MilleniumX-detailMainView"),
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
                        image: "Vinyl #2-detailMainView"),
        ]
        mainViewModel.append(contentsOf: newData)
    }
    
    func getPlaylistAdditionalViewModel() {
        
    }
    
    func getHitsAdditionalViewModel() {
        
    }
    
    func getAlbomsAdditionalViewModel() {
        
    }
}
