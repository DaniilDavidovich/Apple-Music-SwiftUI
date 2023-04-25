//
//  descriptionAndSliderView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 20.04.23.
//

import SwiftUI


struct DescriptionAndSliderView: View {
    
    // MARK: - Properties
    
    @State private var sliderValue = 0.0
    @State private var range = 0...4.32
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                
                VStack(alignment: .leading) {
                    Text(Texts.title)
                        .bold()
                    Text(Texts.description)
                        .foregroundColor(.gray)
                }
                Spacer()
                
                Menu {
                    Button(Texts.share) {
                        //
                    }
                } label: {
                    Image(systemName: Images.circle)
                        .font(.system(size: 27))
                }
                .padding(.top, 1)
                .foregroundColor(.red)
            }
            
            Slider(value: $sliderValue, in: range, step: 0.01)
                .accentColor(.red)
            
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

fileprivate enum Images {
    static let circle = "ellipsis.circle"
}

fileprivate enum Texts {
    static let title = "Anima"
    static let description = "The Limba"
    static let share = "Share Music"
}

struct DescriptionAndSliderView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionAndSliderView()
    }
}
