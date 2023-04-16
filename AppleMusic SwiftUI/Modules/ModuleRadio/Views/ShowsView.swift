//
//  ShowsView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 17.04.23.
//

import SwiftUI

struct ShowsView: View {
    
    var data = ["africa-radio", "audiosystem-radio", "beats-radio", "hip-hop-radio", "latino-radio", "pop-radio", "queen-radio"]
    
    let rows = [
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, content: {
                ForEach(data, id: \.self) { data in
                    
                    VStack(alignment: .leading) {
                        
                        Text("Exlusive")
                            .foregroundColor(.gray)
                            .font(.footnote)
                            .textCase(.uppercase)
                            .padding(.top, 3)
                        Spacer()
                            .frame(height: 3)
                        
                        Text("Named")
                            .font(.title2)
                        
                        Spacer()
                            .frame(height: 3)
    
                        Text("Description")
                            .foregroundColor(.gray)
                            .font(.title3)
                            
                        Image(data)
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
