//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct Car {
    var step: Int
    
    init(step: Int = 1) {
        self.step = step
    }
    
    mutating func moveForward(step: Int) {
        self.step += step
    }
    
    func displayStep() -> String {
        var printStep: String = ""
        for _ in 0..<self.step {
            printStep += "-"
        }
        return printStep
    }
}

struct RacingGame {
    var cars: [Car]
    
    init(numberOfCars: Int) {
        var cars: [Car] = []
        for _ in 1...numberOfCars {
            cars.append(Car())
        }
        self.cars = cars
    }
    
    mutating func playOneTurn() {
        for i in 0..<cars.count {
            //3print("aaa \(i)")
            let randomResult = Int.random(in: 0...9)
            if randomResult >= 4 {
                self.cars[i].moveForward(step: 1)
            }
        }
    }
    
    func displayOneTurn() {
        for car in cars {
            print( car.displayStep() )
        }
        print("")
    }
    
}

print("자동차 대수는 몇 대 인가요?")
var number = Int(readLine() ?? "3") ?? 3

var game = RacingGame(numberOfCars: number)
for _ in 1...3 {
    game.playOneTurn()
    game.displayOneTurn()
}

