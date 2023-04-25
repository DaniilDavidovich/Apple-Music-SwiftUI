//
//  ShowsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI


struct ShowsView: View {
    
    // MARK: - Properties
    
    @ObservedObject private var model = RadioViewModel()
    
    let rows = [
        GridItem(.flexible())
    ]
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, content: {
                ForEach(model.dataShows) { dataModel in
                    VStack(alignment: .leading) {
                        Text(dataModel.header ?? "Error")
                            .foregroundColor(.gray)
                            .font(.footnote)
                            .textCase(.uppercase)
                        
                        Text(dataModel.title)
                            .font(.title2)
                        
                        Spacer()
                            .frame(height: 3)
    
                        Text(dataModel.descrioption)
                            .foregroundColor(.gray)
                            .font(.title3)
                            
                        Image(dataModel.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 250)
                            .cornerRadius(5)
                    }
                }
            })
            .padding(20)
        }
    }
}

struct ShowsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowsView()
    }
}
