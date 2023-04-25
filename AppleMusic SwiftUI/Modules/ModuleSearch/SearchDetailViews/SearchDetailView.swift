//
//  SearchDetailView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI


struct SearchDetailView: View {
    
    // MARK: - Properties
    
    @ObservedObject var searchDetailModel = SearchDetailViewModel()
    @Environment(\.presentationMode)  var presentationMode
    
    @State var grid = [
        GridItem(.flexible())
    ]
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                SearchDetailMainView(data: searchDetailModel)
                
                SearchDetailAdditionalView(
                    contstant: .playlist,
                    data: searchDetailModel
                )
                SearchDetailAdditionalView(
                    contstant: .alboms,
                    data: searchDetailModel
                )
                SearchDetailAdditionalView(
                    contstant: .hits,
                    data: searchDetailModel
                )
            }
        }
        .padding(.bottom, 80)
        .navigationBarTitle(Titles.navTitle)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: Images.chevron)
                            .foregroundColor(Color.red)
                    }
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Menu {
                    Button(Titles.buttonTitle) {
                        // Clear
                    }
                } label: {
                    Image(systemName: Images.ellipsis)
                        .foregroundColor(.red)
                        .font(.system(size: 22))
                }
            }
        }
    }
}

fileprivate enum Titles {
    static let navTitle = "Pop in Russia"
    static let buttonTitle = "Share Redactors"
}

fileprivate enum Images {
    static let chevron = "chevron.backward"
    static let ellipsis = "ellipsis.circle"
}

struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView()
    }
}
