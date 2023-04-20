//
//  ContentView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct MediaView: View {
    
    @State var editMode: EditMode = .inactive
    
    @State private var isEditing = false
    
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
            
            .navigationBarTitle("Media Library")
            
            .navigationBarItems(
                trailing:
                    Button(action: {
                    isEditing.toggle()
                    editMode = isEditing ? .active : .inactive
                })
                {
                    Text(isEditing ? "Done" : "Edit")
                }
                
                .foregroundColor(.red)
            )
            
            .environment(\.editMode, $editMode)
        }
    }
}




struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}
