//
//  ListView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI



struct ListView: View {
    @State private var titles = ["Playlists", "Artists", "Alboms", "Songs", "Films", "Videoclips", "Genres", "Collections", "Autors"]
    @State private var editMode = EditMode.inactive
    
    var body: some View {
        NavigationView {
            List {
                ForEach(titles, id: \.self) { item in
                    Text(item)
                        .bold()
                        .onDrag {
                            NSItemProvider(object: NSString(string: item))
                        }
                }
                .onDelete(perform: onDelete)
                .onMove(perform: onMove)
                
            }
            .navigationBarItems(trailing: EditButton())
            .environment(\.editMode, $editMode)
        }
    }

    func onDelete(at offsets: IndexSet) {
        titles.remove(atOffsets: offsets)
    }
    
    func onMove(source: IndexSet, destination: Int) {
            titles.move(fromOffsets: source, toOffset: destination)
    }
}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
