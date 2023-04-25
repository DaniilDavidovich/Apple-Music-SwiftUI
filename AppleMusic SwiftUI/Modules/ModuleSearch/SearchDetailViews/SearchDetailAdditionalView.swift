//
//  HPlayListAndHitsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI


struct SearchDetailAdditionalView: View {
    
    // MARK: - Properties
    
    var contstant: Flags
    var data: [SearchModel]
    
    @State var rows = [
        GridItem(.flexible())
    ]
    
    // MARK: - Enum
    
    enum Flags: String {
        case playlist = "Playlists"
        case alboms = "Alboms"
        case hits = "Hits"
    }
    
    // MARK: - Body
    
    var body: some View {
        if contstant == .playlist {
            VStack(alignment: .leading) {
                Button {
                    // Clear Action
                } label: {
                    HStack {
                        Text(Titles.playlists)
                            .font(.title2)
                            .bold()
                            .padding(.leading, 20)
                            .foregroundColor(Color(UIColor.label))
                        
                        Image(systemName: Images.control)
                            .rotationEffect(.init(degrees: 90))
                            .foregroundColor(.gray)
                            .bold()
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(data) { data in
                            VStack(alignment: .leading) {
                                Image(data.image)
                                    .resizable()
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                
                                Text(data.title)
                                    .lineLimit(1)
                                
                                Text(data.description ?? Titles.error)
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
                    // Clear Action
                } label: {
                    HStack {
                        Text(Titles.alboms)
                            .font(.title2)
                            .bold()
                            .padding(.leading, 20)
                            .foregroundColor(Color(UIColor.label))
                        
                        Image(systemName: Images.control)
                            .rotationEffect(.init(degrees: 90))
                            .foregroundColor(.gray)
                            .bold()
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        
                        ForEach(data) { data in
                            VStack(alignment: .leading) {
                                Image(data.image)
                                    .resizable()
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                
                                Text(data.title)
                                    .lineLimit(1)
                                
                                Text(data.description ?? Titles.error)
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
                    // Clear Action
                } label: {
                    HStack {
                        Text(Titles.hits)
                            .font(.title2)
                            .bold()
                            .padding(.leading, 20)
                            .foregroundColor(Color(UIColor.label))
                        
                        Image(systemName: Images.control)
                            .rotationEffect(.init(degrees: 90))
                            .foregroundColor(.gray)
                            .bold()
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(data) { data in
                            VStack(alignment: .leading) {
                                Image(data.image)
                                    .resizable()
                                
                                    .cornerRadius(15)
                                    .frame(width: 180, height: 180)
                                
                                Text(data.title)
                                    .lineLimit(1)
                                
                                Text(data.description ?? Titles.error)
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
}

fileprivate enum Titles {
    static let hits = "Hits"
    static let alboms = "Alboms"
    static let playlists = "Playlists"
    static let error = "Error"
}

fileprivate enum Images {
    static let control = "control"
}

struct SearchDetailAdditionalView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailAdditionalView(contstant: .playlist, data: [SearchModel]())
    }
}
