//
//  ListView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI



struct MediaList: View {
    
    @State var modelViewModel = MediaViewModel()
    
    @State private var isSelected: Bool = false
       
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
            
//            .onDelete(perform: onDelete)
            .onMove(perform: modelViewModel.move)
            .background(Color.clear)
            .listRowSeparator(.hidden, edges: .all)
            .frame(height: 0, alignment: .trailing)
        }
        
        .listStyle(.inset)
        .background(Color.clear)
    }
    
//    func onMove(source: IndexSet, destination: Int) {
//        model.move(fromOffsets: source, toOffset: destination)
//    }
}
