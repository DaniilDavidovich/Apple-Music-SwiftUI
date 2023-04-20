//
//  SearchListView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 19.04.23.
//

import SwiftUI

struct SearchListView: View {
    
    @State var data = ["me","me","me","me","me","me","me","me","me","me"]
    
    @State private var isOn = false
    
    var body: some View {
        
        VStack {
            
            
            
            List {
                ForEach(data, id: \.self) { data in
                    Text(data)
                        .padding(15)
                }
                
            }
        }
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
