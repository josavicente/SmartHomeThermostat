//
//  Extensions.swift
//  SmartHomeThermostat
//
//  Created by Josafat Vicente Pérez on 2/8/22.
//

import SwiftUI

extension LinearGradient{
    
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing) {
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
    
}
