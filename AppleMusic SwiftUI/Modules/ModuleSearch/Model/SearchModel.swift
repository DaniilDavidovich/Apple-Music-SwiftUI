//
//  SearchModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import Foundation


struct SearchModel: Identifiable {
    var id = UUID()
    var title: String
    var description: String?
    var image: String
}
