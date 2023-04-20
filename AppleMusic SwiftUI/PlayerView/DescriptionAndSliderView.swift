//
//  descriptionAndSliderView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI

struct DescriptionAndSliderView: View {
    
    
    @State private var sliderValue = 0.0
        
    @State private var range = 0...4.32
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                
                VStack(alignment: .leading) {
                    Text("title")
                    Text("Description")
                }
                
                Spacer()
                Menu {
                    Button("Share Music") {
                        //
                    }
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.system(size: 27))
                }
                .padding(.top, 1)
                .foregroundColor(.gray)
            }
            
            Slider(value: $sliderValue, in: range, step: 0.01)
            
            HStack {
                Text("\(sliderValue, specifier: "%.2f")")
                Spacer()
                let logic = Double(range.upperBound) - Double(sliderValue)
                Text("-\(logic, specifier: "%.2f")")
            }
        }
        .padding(.horizontal, 20)
    }
}

struct DescriptionAndSliderView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionAndSliderView()
    }
}
