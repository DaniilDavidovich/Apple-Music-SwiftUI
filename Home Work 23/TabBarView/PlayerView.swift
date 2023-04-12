//
//  PlayerView.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 11.04.23.
//

import SwiftUI



struct PlayerView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                
                Rectangle()
                    .fill(Color(
                        red: 0.972,
                        green: 0.972,
                        blue: 0.972
                    ))

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
                        // clear
                    } label: {
                        Image(systemName: Images.iconPlay)
                            .font(.title2)
                            .foregroundColor(Color.black)
                    }
                    
                    Button {
                       // clear
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
        }

        Divider()
            .padding(.top, -15.0)
    }
}

struct PlayerWindow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

fileprivate enum Constants {
    static let title = "Не исполняется"
}

fileprivate enum Images {
    static let iconMusicPlug = "Music"
    static let iconPlay = "play.fill"
    static let iconForward = "forward.fill"
}
