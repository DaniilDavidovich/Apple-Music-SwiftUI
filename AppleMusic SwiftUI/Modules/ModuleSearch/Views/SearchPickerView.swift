//
//  SearchPickerView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 24.04.23.
//

import SwiftUI


struct SearchPickerView: View {
    
    // MARK: - Properties
    
    @Binding var selectedSide: Int
    let titleSide = [titlesSide.appleMusic, titlesSide.yourMediateka ]
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedSide) {
                ForEach(0..<2) { index in
                    Text(titleSide[index])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

fileprivate enum titlesSide {
    static let appleMusic = "Apple Music"
    static let yourMediateka = "Your Media Library"
}


