//
//  ContentView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct MediaView: View {
    
    @State private var titles = [("Playlists","heart"), ("Artists", "heart"), ("Alboms", "heart"), ("Songs", "heart"), ("Films", "heart"), ("Videoclips", "heart"), ("Genres", "heart"), ("Collections", "heart"), ("Autors", "heart")]
    
    @State private var isEditing = false
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if isEditing {
                    MediaList(titles: $titles)
                        .padding()
                        
                } else {
                    MediaTitle()
                }
            }
            
            .navigationBarTitle("Media Library")
            
            .navigationBarItems(
                trailing: Button(action: {
                    isEditing.toggle()
                })
                {
                    Text(isEditing ? "Done" : "Edit")
                }
                
                .foregroundColor(.red)
            )
        }
    }
}




struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}
