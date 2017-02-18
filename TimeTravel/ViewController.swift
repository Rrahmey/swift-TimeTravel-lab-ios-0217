//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var currentPlanetLabel: UILabel!
    
    @IBOutlet weak var noSpeedButton: UIButton!
    @IBOutlet weak var speedSlowButton: UIButton!
    @IBOutlet weak var mediumSpeedButton: UIButton!
    @IBOutlet weak var fastSpeedButton: UIButton!
    @IBOutlet weak var lighteningSpeedButton: UIButton!
    
    @IBOutlet weak var planetMercury: UIButton!
    @IBOutlet weak var planetVenus: UIButton!
    @IBOutlet weak var planetEarth: UIButton!
 
    @IBOutlet weak var planetMars: UIButton!
    @IBOutlet weak var planetJupiter: UIButton!
    @IBOutlet weak var planetSaturn: UIButton!
    @IBOutlet weak var planetUranus: UIButton!
    @IBOutlet weak var planetNeptune: UIButton!
 
    @IBOutlet var allPlanets: [UIButton]!

    
    
    let spaceShipPlayer: SpaceShip = SpaceShip(name: "Raquel", currentPlanet: .earth)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentPlanetLabel.text = planetLabel(planet: spaceShipPlayer.currentPlanet)
         print(spaceShipPlayer.speed)
    }
    
   
    
    func result(player: SpaceShip, planet: Planet)  {
        if spaceShipPlayer.travel(to: planet) {
             resultLabel.text = "Congratulations! You have made it to planet \(spaceShipPlayer.currentPlanet)"
        }else {
            resultLabel.text = "I'm sorry, it seems that you're not going fast enough to travel to \(planet)"
        }
        currentPlanetLabel.text = planetLabel(planet: spaceShipPlayer.currentPlanet)
        weather(planet: spaceShipPlayer.currentPlanet)
    }


    
    @IBAction func speedIsNon(_ sender: Any) {
        spaceShipPlayer.speed = .none
         print(spaceShipPlayer.speed)
    }
    @IBAction func speedIsSlow(_ sender: Any) {
        spaceShipPlayer.speed = .slow
         print(spaceShipPlayer.speed)
    }
    @IBAction func speedIsMedium(_ sender: Any) {
        spaceShipPlayer.speed = .medium
         print(spaceShipPlayer.speed)
    }
    
    @IBAction func speedIsFast(_ sender: Any) {
        spaceShipPlayer.speed = .fast
         print(spaceShipPlayer.speed)
    }
    
    @IBAction func speedIsLightening(_ sender: Any) {
        spaceShipPlayer.speed = .lightSpeed
         print(spaceShipPlayer.speed)
    }
    
    @IBAction func planetMercuryButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .mercury)
        print(spaceShipPlayer.currentPlanet)
        if spaceShipPlayer.travel(to: .mercury) {
            result(player: spaceShipPlayer, planet: .mercury)
        } else {
            result(player: spaceShipPlayer, planet: .venus)
        }
    }
    
    
    @IBAction func planetVenusButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .venus)
        print(spaceShipPlayer.currentPlanet)

        if spaceShipPlayer.travel(to: .venus) {
            result(player: spaceShipPlayer, planet: .venus)
        } else {
            result(player: spaceShipPlayer, planet: .venus)
        }
    }
   
    @IBAction func planetEarthButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .earth)
        print(spaceShipPlayer.currentPlanet)

        if spaceShipPlayer.travel(to: .earth) {
            result(player: spaceShipPlayer, planet: .earth)
        } else {
            result(player: spaceShipPlayer, planet: .earth)
        }
    }
    
   
    @IBAction func planetMarsButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .mars)
        print(spaceShipPlayer.currentPlanet)

        if spaceShipPlayer.travel(to: .mars) {
            result(player: spaceShipPlayer, planet: .mars)
        } else {
            result(player: spaceShipPlayer, planet: .mars)
        }
    }
    
    
    
    @IBAction func planetJupiterButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .jupiter)
        print(spaceShipPlayer.currentPlanet)

        if spaceShipPlayer.travel(to: .jupiter) {
            result(player: spaceShipPlayer, planet: .jupiter)
        } else {
            result(player: spaceShipPlayer, planet: .jupiter)
        }
    }
    
    @IBAction func planetSaturnButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .saturn)
        print(spaceShipPlayer.currentPlanet)

        if spaceShipPlayer.travel(to: .saturn) {
            result(player: spaceShipPlayer, planet: .saturn)
        } else {
            result(player: spaceShipPlayer, planet: .saturn)
        }
    }
   
    @IBAction func planetUranusButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .uranus)
        if spaceShipPlayer.travel(to: .uranus) {
            result(player: spaceShipPlayer, planet: .uranus)
        } else {
            result(player: spaceShipPlayer, planet: .uranus)
        }
    }
   
    @IBAction func planetNeptuneButton(_ sender: Any) {
        spaceShipPlayer.travel(to: .neptune)
        if spaceShipPlayer.travel(to: .neptune) {
            result(player: spaceShipPlayer, planet: .neptune)
        } else {
            result(player: spaceShipPlayer, planet: .neptune)
        }
    }
    
    func weather (planet: Planet) {
        switch planet.weather {
        case .cold:
            view.backgroundColor = UIColor.blue
        case .warm:
            view.backgroundColor = UIColor.orange
        case.hot:
            view.backgroundColor = UIColor.red
        case .superDuperHot:
            view.backgroundColor = UIColor.purple
        }
    }

    

    
    
    func planetLabel (planet: Planet) -> String {
        switch planet {
        case .earth:
            return "Earth"
        case .jupiter:
            return "Jupiter"
        case .mars:
            return "Mars"
        case .mercury:
            return "Mercury"
        case .neptune:
            return "Neptune"
        case .saturn:
            return "Saturn"
        case .uranus:
            return "Uranus"
        case .venus:
           return "Venus"
        }
    }

}

