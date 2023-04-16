//
//  RadioView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 16.04.23.
//

import SwiftUI

struct RadioView: View {
    
    var data = ["africa-radio", "audiosystem-radio", "beats-radio", "hip-hop-radio", "latino-radio", "pop-radio", "queen-radio"]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading) {
                    
                Divider()
                        .padding(.horizontal, 20)
                ShowsView()
                    Divider()
                        .padding(.horizontal, 20)
                    Text("Stations")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                    StationsView()
                }
                .padding(.bottom, 80)
            }
            .navigationBarTitle("Radio")
        }
      
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
