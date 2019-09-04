//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    var cars: Array<Int> = []
    
    mutating func initRacing(numberOfCars: Int) {
        cars.removeAll()
        for _ in 1...numberOfCars {
            cars.append(0)
        }
    }
    
    mutating func oneStep() {
        for idx in 1..<cars.count {
            let random = arc4random_uniform(10)
            if random >= 4 {
                cars[idx] += 1
            }
        }
    }
    
    mutating func racing() {
        print("경기 시작")
        for _ in 1...3{
            oneStep()
            showRacing()
            print("")
        }
        print("경기 종료")
    }
    
    func showRacing() {
        
        for car in cars {
            var distance = ""
            for _ in 0..<car {
                distance += "-"
            }
            print(distance)
        }
    }
}

print("몇대의 자동차로 경주 하시겠습니까?")
let numberOfCar = readLine()
let cars = Int(numberOfCar ?? "1") ?? 1

var racingGame = RacingGame()
racingGame.initRacing(numberOfCars: cars)
racingGame.racing()

