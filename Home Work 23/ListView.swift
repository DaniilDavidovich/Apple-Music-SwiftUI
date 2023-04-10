//
//  ListView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI



struct ListView: View {
    
    @Binding var titles: [(String, String)]
    
    var body: some View {
        
        List {
            ForEach(titles, id: \.0) { item in
                HStack {
                    Image(systemName: item.1)
                        .foregroundColor(.red)
                    Text(item.0)
                        .bold()
                   
                }
            }
            .onDelete(perform: onDelete)
            .onMove(perform: onMove)
            .background(Color.clear)
        }
        
        .listStyle(.inset)
        .background(Color.clear)
    }
    
    func onDelete(at offsets: IndexSet) {
        titles.remove(atOffsets: offsets)
    }
    
    func onMove(source: IndexSet, destination: Int) {
        titles.move(fromOffsets: source, toOffset: destination)
    }
}
