//
//  ListView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI


struct MediaList: View {
    
    // MARK: - Properties
    
    @ObservedObject private var modelViewModel = MediaViewModel()
    @State private var isSelected: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        List {
            ForEach(modelViewModel.mediaModelArray) { mediaModel in
                MediaRow(model: mediaModel)
                    .onTapGesture {
                        withAnimation {
                            modelViewModel.update(model: mediaModel)
                        }
                    }
            }
            .onMove(perform: modelViewModel.move)
            .background(Color.clear)
            .listRowSeparator(.hidden, edges: .all)
            .frame(height: 0, alignment: .trailing)
        }
        .listStyle(.inset)
        .background(Color.clear) 
    }
}
