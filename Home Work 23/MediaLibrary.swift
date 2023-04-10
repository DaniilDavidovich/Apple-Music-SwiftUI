//
//  ContentView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 10.04.23.
//

import SwiftUI

struct MediaLibrary: View {
    
    @State private var titles = [("Playlists","heart"), ("Artists", "heart"), ("Alboms", "heart"), ("Songs", "heart"), ("Films", "heart"), ("Videoclips", "heart"), ("Genres", "heart"), ("Collections", "heart"), ("Autors", "heart")]
    
    @State private var isEditing = false
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if isEditing {
                    ListView(titles: $titles)
                        .padding()
                        
                } else {
                    DesscriptionMediaLibrary()
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




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibrary()
    }
}
