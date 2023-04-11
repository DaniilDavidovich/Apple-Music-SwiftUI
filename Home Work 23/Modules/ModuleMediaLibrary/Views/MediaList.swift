//
//  ListView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI



struct MediaList: View {
    
    @State var model = MediaModel.getModel
    
    @State private var isSelected: Bool = false
       
    var body: some View {
        List {
            ForEach(model, id: \.self) { item in
                MediaRow(model: item)
            }
            .onDelete(perform: onDelete)
            .onMove(perform: onMove)
            .background(Color.clear)
            .listRowSeparator(.hidden, edges: .all)
            .frame(height: 0, alignment: .trailing)
        }
        
        .listStyle(.inset)
        .background(Color.clear)
    }
    
    func onDelete(at offsets: IndexSet) {
        model.remove(atOffsets: offsets)
    }
    
    func onMove(source: IndexSet, destination: Int) {
        model.move(fromOffsets: source, toOffset: destination)
    }
}
