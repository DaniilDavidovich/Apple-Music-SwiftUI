//
//  StationsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI

struct StationsView: View {
    
//    let model = ["classic-music", "dance-music", "relax-music", "top-music" ]
    
    @ObservedObject var model = RadioViewModel()
    
    let colums = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: colums, alignment: .leading) {
            
            ForEach(model.dataStations) { dataModel in
                HStack(spacing: 20) {
                    Image(dataModel.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .cornerRadius(5)
                    VStack {
                        Text(dataModel.name)
                            .font(.title3)
                        Text(dataModel.descrioption)
                            .font(.callout)
                            .foregroundColor(Color.gray)
                    }
                }
                Divider()
            }
            .padding(.horizontal, 20)
            
        }
    }
}



struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
