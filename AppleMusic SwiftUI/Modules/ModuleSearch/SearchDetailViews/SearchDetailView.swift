//
//  SearchDetailView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct SearchDetailView: View {
    
    @State var grid = [
        GridItem(.flexible())
    ]
    
    @ObservedObject var searchDetailModel = SearchDetailViewModel()
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                MainView(data: searchDetailModel)
                AdditionalView(contstant: .playlist, data: searchDetailModel)
                AdditionalView(contstant: .alboms, data: searchDetailModel)
                AdditionalView(contstant: .hits, data: searchDetailModel)
            }
        }
        .padding(.bottom, 80)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                
                Menu {
                    Button("Share Redactors") {
                        
                    }
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .foregroundColor(.red)
                        .font(.system(size: 22))
                }
            }
        }
    }
}


struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView()
    }
}
