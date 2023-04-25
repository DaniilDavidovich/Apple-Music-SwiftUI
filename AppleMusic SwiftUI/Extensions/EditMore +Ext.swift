//
//  EditMore +Ext.swift
//  Home Work 23
//
//  Created by Daniil Davidovich on 11.04.23.
//

import SwiftUI


extension EditMode {
    mutating func toggle() {
        self = self == .active ? .inactive : .active
    }
}
