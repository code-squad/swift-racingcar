//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct RacingGames {
    
    var numberOfCars : Int
    var doesCarMovingFowrd : Array<Int> = []
    
    init(numberOfCars : Int) {
        self.numberOfCars = numberOfCars
        
    }
    
    mutating func resetCarMoving() {
        self.doesCarMovingFowrd = [Int](repeating: 0, count: numberOfCars)
    }
    
    mutating func runRacing() {
        
        for carIndex in 0..<numberOfCars {
            var isForwarding = Int.random(in: 0...9)
            
            doesCarMovingFowrd[carIndex] += (isForwarding >= 4 ? 1 : 0)
        }
    }
    
    func printRacingResult() {
        for carIndex in 0..<numberOfCars {
            for _ in 0..<doesCarMovingFowrd[carIndex] {
                print("-", terminator:"")
            }
            print("")
        }
    }
    
    mutating func runRacingPrintRepeat(count : Int) {
        resetCarMoving()
        for _ in 1...count {
            runRacing()
            printRacingResult()
            
            print("")
        }
    }
    
}

print("> 자동차 대수는 몇 대 인가요?")
print("> ", terminator:"")
var readCarCounts = readLine()

var numberOfCars = Int(readCarCounts ?? "0") ?? 0

var racingGame = RacingGames(numberOfCars: numberOfCars)

print("")
print("실행결과")
racingGame.runRacingPrintRepeat(count: 3)
