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
    @Environment(\.presentationMode)  var presentationMode
    
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
        .navigationBarTitle("Pop in Russia")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(Color.red)
                        }
                    }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                
                Menu {
                    Button("Share Redactors") {
                        //
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
