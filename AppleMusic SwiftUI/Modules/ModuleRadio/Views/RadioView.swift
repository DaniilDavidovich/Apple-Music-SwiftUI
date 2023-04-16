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
            VStack {
                
                Divider()
                    .padding(3)
                ShowsView()
                Spacer()
                    
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
