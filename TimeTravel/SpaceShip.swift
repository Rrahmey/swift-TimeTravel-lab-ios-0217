//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by Raquel Rahmey on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    
    var name:String
    var speed: Speed = .none
    var currentPlanet: Planet
    
    var description:String = ""
    
    init(name:String, currentPlanet: Planet) {
        self.name = name
        self.currentPlanet = currentPlanet
    }
    
    func timeTravel() -> Bool {
        guard speed.lightSpeedCheck else {return false}
        return true
    }
    
    func travel(to planet:Planet) -> Bool{
        if currentPlanet == .mercury {
            return false
        }
        let speedMin = checkSpeedRequirement(for: planet)
        if self.speed == speedMin {
            return true
            currentPlanet = planet
        } else {
            return false
        }
    }
    
    func checkSpeedRequirement (for planet:Planet) -> Speed {
        switch planet {
        case .venus:
            speed = .fast
        case .earth:
            speed = .fast
        case .mars:
            speed = .lightSpeed
        case .jupiter:
            speed = .slow
        case .saturn:
            speed = .medium
        case .uranus:
            speed = .slow
        case .neptune:
            speed = .fast
        default:
            speed = .none
        }
    }
    
    
    
}
