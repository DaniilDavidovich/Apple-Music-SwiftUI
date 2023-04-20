//
//  SearchVIewModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    @Published var categoriesModel = [SearchModel]()
    
    init() {
        getCategoriesModel()
    }
    
    func getCategoriesModel() {
        let newData = [
            SearchModel(title: "90's", image: "90's-search"),
            SearchModel(title: "Chill", image: "chill-search"),
            SearchModel(title: "Dance", image: "dance-search"),
            SearchModel(title: "Dj Mixes", image: "djMixes-search"),
            SearchModel(title: "Family", image: "family-search"),
            SearchModel(title: "Feel Good", image: "feelGood-search"),
            SearchModel(title: "Fitnes", image: "fitnes-search"),
            SearchModel(title: "Hits", image: "hits-search"),
            SearchModel(title: "Kids", image: "kids-search"),
            SearchModel(title: "Pop", image: "pop-search"),
            SearchModel(title: "Hits In Russia", image: "hitsInRussia-search"),
            SearchModel(title: "Pop In Russia", image: "popInRussia-search"),
            SearchModel(title: "Sing", image: "sing-search"),
            SearchModel(title: "Special Audio", image: "specialAudio-search"),
            ]
        categoriesModel.append(contentsOf: newData)
    }
}
