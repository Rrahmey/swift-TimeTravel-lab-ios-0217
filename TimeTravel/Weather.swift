//
//  Weather.swift
//  TimeTravel
//
//  Created by Raquel Rahmey on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

enum Weather{
    case cold, warm, hot, superDuperHot
    
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    var hasLife: Bool{
        if self == .earth || self == .mars {
            return true
        } else {
            return false
        }
    
        var weather: Weather {
            switch self {
            case .mercury:
                return .superDuperHot
            case .venus:
                return .superDuperHot
            case .earth:
                return .warm
            case .mars:
                return .warm
            case .jupiter:
                return .cold
            case .saturn:
                return .cold
            case .uranus:
                return .cold
            case .neptune:
                return .cold
        
            }
        }
    
}
