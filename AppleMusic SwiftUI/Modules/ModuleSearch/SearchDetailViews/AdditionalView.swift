//
//  HPlayListAndHitsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct AdditionalView: View {
    
    @State var rows = [
        GridItem(.flexible())
    ]
    
    enum Flags: String {
        case playlist = "Playlists"
        case alboms = "Alboms"
        case hits = "Hits"
    }
    
    var contstant: Flags
    
    var data: SearchDetailViewModel
    
    var body: some View {
        if contstant == .playlist {
            VStack(alignment: .leading) {
                Text(Titles.playlists)
                    .font(.title2)
                    .bold()
                    .padding(.leading, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        
                        
                        ForEach(data.playlistAdditionalViewModel) { data in
                            VStack {
                                Image(data.image)
                                    .resizable()
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                Text(data.title)
                                Text(data.description ?? "Error")
                            }
                            .padding(.horizontal, 3)
                            
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
            }
            
        } else if contstant == .alboms {
            VStack(alignment: .leading) {
                Text(Titles.alboms)
                    .font(.title2)
                    .bold()
                    .padding(.leading, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        
                        ForEach(data.albomsAdditionalViewModel) { data in
                            VStack {
                                Image(data.image)
                                    .resizable()
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                Text(data.title)
                                Text(data.description ?? "Error")
                            }
                            .padding(.horizontal, 3)   
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
            }
            
        } else if contstant == .hits {
            
            VStack(alignment: .leading) {
                Text(Titles.hits)
                    .font(.title2)
                    .bold()
                    .padding(.leading, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        
                        
                        ForEach(data.hitsAdditionalViewModel) { data in
                            VStack {
                                Image(data.image)
                                    .resizable()
                                    
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                Text(data.title)
                                Text(data.description ?? "Error")
                            }
                            .padding(.horizontal, 3)
                            
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
            }
        }
    }
    
    fileprivate enum Titles {
        static let hits = "Hits"
        static let alboms = "Alboms"
        static let playlists = "Playlists"
    }
}

struct AdditionalView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalView(contstant: .playlist, data: SearchDetailViewModel())
    }
}
