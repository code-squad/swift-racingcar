//
//  RaceGame.swift
//  RaceCar
//
//  Created by JK on 15/05/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct RaceGame {
    private var cars = [Car]()
    init?(with names: [String]) {
        guard names.count > 0 else { return nil }
        for name in names {
            let car = Car(with: name)
            cars.append(car)
        }
    }
    
    func run(_ transform: (Car)->()) {
        cars.forEach{ transform($0) }
    }
}
