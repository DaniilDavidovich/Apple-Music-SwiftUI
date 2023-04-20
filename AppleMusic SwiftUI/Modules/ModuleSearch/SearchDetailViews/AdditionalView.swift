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
                Button {
                    //
                } label: {
                    HStack {
                        Text(Titles.playlists)
                            .font(.title2)
                            .bold()
                            .padding(.leading, 20)
                            .foregroundColor(.black)
                        Image(systemName: "control")
                            .rotationEffect(.init(degrees: 90))
                            .foregroundColor(.gray)
                            .bold()
                    }
                }

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        
                        
                        ForEach(data.playlistAdditionalViewModel) { data in
                            VStack(alignment: .leading) {
                                Image(data.image)
                                    .resizable()
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                Text(data.title)
                                    .lineLimit(1)
                                Text(data.description ?? "Error")
                                    .foregroundColor(Color(UIColor.systemGray))
                            }
                            .padding(.horizontal, 3)
                            
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
            }
            
        } else if contstant == .alboms {
            VStack(alignment: .leading) {
                Button {
                    //
                } label: {
                    HStack {
                        Text(Titles.playlists)
                            .font(.title2)
                            .bold()
                            .padding(.leading, 20)
                            .foregroundColor(.black)
                        Image(systemName: "control")
                            .rotationEffect(.init(degrees: 90))
                            .foregroundColor(.gray)
                            .bold()
                    }
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        
                        ForEach(data.albomsAdditionalViewModel) { data in
                            VStack(alignment: .leading) {
                                Image(data.image)
                                    .resizable()
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                Text(data.title)
                                    .lineLimit(1)
                                Text(data.description ?? "Error")
                                    .foregroundColor(Color(UIColor.systemGray))
                            }
                            .padding(.horizontal, 3)   
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
            }
            
        } else if contstant == .hits {
            
            VStack(alignment: .leading) {
                Button {
                    //
                } label: {
                    HStack {
                        Text(Titles.playlists)
                            .font(.title2)
                            .bold()
                            .padding(.leading, 20)
                            .foregroundColor(.black)
                        Image(systemName: "control")
                            .rotationEffect(.init(degrees: 90))
                            .foregroundColor(.gray)
                            .bold()
                    }
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        
                        
                        ForEach(data.hitsAdditionalViewModel) { data in
                            VStack(alignment: .leading) {
                                Image(data.image)
                                    .resizable()
                                    
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                Text(data.title)
                                    .lineLimit(1)
                                Text(data.description ?? "Error")
                                    .foregroundColor(Color(UIColor.systemGray))
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
