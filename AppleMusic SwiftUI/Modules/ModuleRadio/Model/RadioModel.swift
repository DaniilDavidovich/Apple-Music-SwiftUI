//
//  RadioModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import Foundation

struct RadioModel: Identifiable, Hashable {
    let id = UUID()
    let header: String?
    let name: String
    let descrioption: String
    let image: String
}
