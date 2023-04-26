//
//  SearchViewRepresentable.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 26.04.23.
//

import UIKit
import SwiftUI


struct SearchViewRepresentable: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        return SearchViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
