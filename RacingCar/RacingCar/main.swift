//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct RaceGame {
    
    var cars: Int
    var distances: [Int] = []
    private let repeatCount = 3
    
    init(cars: Int) {
        self.cars = cars
        self.distances = [Int](repeating: 0, count: cars)
    }
    
    private mutating func runRace() {
        for index in 0..<cars {
            let isForward: Bool = (Int.random(in: 0...9) >= 4) ? true : false
            distances[index] += (isForward ? 1 : 0)
        }
    }
    
    private func printRaceResult() {
        for index in 0..<cars {
            for _ in 0..<distances[index] {
                print("-", terminator:"")
            }
            print("")
        }
    }
    
    mutating func runGame() {
        for _ in 0..<repeatCount {
            runRace()
            printRaceResult()
            print("")
        }
    }
}

print("자동차 대수는 몇 대 인가여?")
var inputedValue = readLine()
var cars = Int(inputedValue ?? "0") ?? 0
var raceGame = RaceGame(cars: cars)

print("실행 결과")
raceGame.runGame()
