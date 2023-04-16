//
//  RadioModel.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import Foundation

struct RadioModel: Identifiable {
    let id = UUID()
    let header: String?
    let title: String
    let descrioption: String
    let image: String
}
