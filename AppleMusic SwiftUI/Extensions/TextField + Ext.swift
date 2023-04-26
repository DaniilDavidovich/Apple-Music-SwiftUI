//
//  TextField + Ext.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 26.04.23.
//

import UIKit

extension UITextField {
    
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 23, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 10, y: 0, width: 40, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
