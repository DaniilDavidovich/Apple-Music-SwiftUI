//
//  SearchPickerView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 24.04.23.
//

import SwiftUI

struct SearchPickerView: View {
    
    @Binding var selectedSide: Int
    var tab = ["Apple Music", "Ваша медиатека"]

    var body: some View {
        VStack {
            Picker("", selection: $selectedSide) {
                ForEach(0..<2) { index in
                    Text(tab[index])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}


