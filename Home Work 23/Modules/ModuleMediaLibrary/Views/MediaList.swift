//
//  ListView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI



struct MediaList: View {
    
    var model = MediaModel.getModel
    
//    @Binding var model: [MediaModel]
    
    @State private var isSelected: Bool = false
    
    var body: some View {
        
        List {
            ForEach(model, id: \.self) { item in
                MediaRow(model: item)
            }
//            .onDelete(perform: onDelete)
//            .onMove(perform: onMove)
            .background(Color.clear)
            .onTapGesture {
                isSelected.toggle()
            }
        }
        
        .listStyle(.inset)
        .background(Color.clear)
    }
    
    mutating func onDelete(at offsets: IndexSet) {
        model.remove(atOffsets: offsets)
    }
    
    mutating func onMove(source: IndexSet, destination: Int) {
        model.move(fromOffsets: source, toOffset: destination)
    }
}
