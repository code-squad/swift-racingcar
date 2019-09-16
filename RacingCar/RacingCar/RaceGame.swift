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
    
    func run() -> String {
        var result = ""
        for car in cars {
            result += "\(car.name): "
            let random = RandomNumber(value: Int.random(maxValue: Int.RANDOM_MAX_VALUE))
            car.moveForward(by: random)
            car.iterate{ position in
                result += "-"
            }
            result += "\n"
        }
        return result
    }
}
