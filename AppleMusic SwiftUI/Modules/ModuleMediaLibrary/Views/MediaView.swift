//
//  ContentView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI


struct MediaView: View {
    
    // MARK: - Properties
    
    @State private var editMode: EditMode = .inactive
    @State private var isEditing = false
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            VStack {
                if isEditing {
                    MediaList()
                        .padding()
                } else {
                    MediaTitle()
                }
            }
            .navigationBarTitle(Constants.navTitle)
            
            .navigationBarItems(trailing:
                                    Button(action: {
                isEditing.toggle()
                editMode = isEditing ? .active : .inactive
            }) {
                Text(isEditing ? Constants.done : Constants.edit)
                    .foregroundColor(.red)
            }
            )
            .environment(\.editMode, $editMode)
        }
    }
}

fileprivate enum Constants {
    static let navTitle = "Media Library"
    static let done = "Done"
    static let edit = "Edit"
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}
