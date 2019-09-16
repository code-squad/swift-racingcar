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
    init(tries: Int) {
        for _ in 0..<tries {
            let car = Car()
            cars.append(car)
        }
    }
    
    func run() -> String {
        var result = ""
        for car in cars {
            for _ in 0..<car.position {
                result += "-"
            }
            let random = RandomNumber(value: Int.random(maxValue: Int.RANDOM_MAX_VALUE))
            car.moveForward(byRandom: random)
            if random.isGoing() {
                result += "-\n"
            }
            else {
                result += "\n"
            }
        }
        return result
    }
}
