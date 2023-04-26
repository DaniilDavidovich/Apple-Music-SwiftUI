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
    var title: String?
    var description: String?
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title ?? Constants.error)
                        .bold()
                    
                    Text(description ?? Constants.error)
                        .foregroundColor(.gray)
                }
                Spacer()
                
                Menu {
                    Button(Constants.share) {
                        // Clear Active
                    }
                } label: {
                    Image(systemName: Constants.circle)
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

fileprivate enum Constants {
    static let circle = "ellipsis.circle"
    static let share = "Share Music"
    static let error = "Error"
}

