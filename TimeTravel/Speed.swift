//
//  Speed.swift
//  TimeTravel
//
//  Created by Raquel Rahmey on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    
    case none = 0
    case slow = 50
    case medium = 150
    case fast = 1000.0
    case lightSpeed = 1000000.0
    
    init(spaceSpeed:Double) {
        switch spaceSpeed {
        case 0:
            self = .none
        case 1...149:
            self = .slow
        case 150...999:
            self = .medium
        case 1000...999999:
            self = .fast
        default:
            self = .lightSpeed
        }
    }
    
    var lightSpeedCheck: Bool {
        guard self == .lightSpeed else {return false}
        return true
       
    }
    
    func isFaster(than speed:Speed)->Bool{
        if self.rawValue > speed.rawValue {
            return true
        } else {
            return false
        }
    }

}
