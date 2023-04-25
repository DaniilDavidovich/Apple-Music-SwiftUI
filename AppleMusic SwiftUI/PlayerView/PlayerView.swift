//
//  PlayerView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 11.04.23.
//

import SwiftUI


struct PlayerView: View {
    
    // MARK: - Properties
    
    @State private var showModal = false
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color(UIColor.systemGray6))
                
                HStack(spacing: 0) {
                    Image(Images.iconMusicPlug)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 52, height: 52)
                        .cornerRadius(5)
                        .shadow(color: .gray, radius: 4)
                    
                    Text(Constants.title)
                        .padding(.horizontal, 15)
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        // Clear action
                    } label: {
                        Image(systemName: Images.iconPlay)
                            .font(.title2)
                            .foregroundColor(Color(UIColor.darkGray))
                    }
                    
                    Button {
                        // Clear action
                    } label: {
                        Image(systemName: Images.iconForward)
                            .font(.title2)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 25)
                }
                .padding([.horizontal, .leading], 20.0)
            }
            .frame(height: 70)
            .offset(y: -49)
            .onTapGesture {
                showModal = true
            }
            .sheet(isPresented: $showModal) {
                PlayerModalView()
            }
            .fullScreenCover(isPresented: $showModal) {
                PlayerModalView()
            }
        }
        
        Divider()
            .padding(.top, -15.0)
    }
}

fileprivate enum Constants {
    static let title = "Not Playing"
}

fileprivate enum Images {
    static let iconMusicPlug = "Music"
    static let iconPlay = "play.fill"
    static let iconForward = "forward.fill"
}

struct PlayerWindow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
