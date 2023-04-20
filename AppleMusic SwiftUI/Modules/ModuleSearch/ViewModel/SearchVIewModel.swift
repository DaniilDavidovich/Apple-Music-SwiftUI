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
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            SearchModel(title: "Title", image: "Black"),
            
            ]
        categoriesModel.append(contentsOf: newData)
    }
}
