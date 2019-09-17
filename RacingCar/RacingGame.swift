//
//  RacingGame.swift
//  RacingCar
//
//  Created by 공명진 on 2019/09/11.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    private let cars: [Car]
    private let iterations: Int
    
    init(cars: [Car], iterations: Int) {
        self.cars = cars
        self.iterations = iterations
    }
    
    func run() {
        for _ in 0 ..< iterations {
            for index in 0 ..< cars.count {
                let isForward = (Int.random(in: 0...9) >= 4) ? true : false
                cars[index].position = (isForward ? 1 : 0)
            }
        }
    }
    
    private func maxPosition() -> Int {
        return cars.map { $0.position }
                .max() ?? 0
    }
    
    func winRaces() -> [Car] {
        return cars.filter { $0.position == maxPosition() }
    }
    
    func printResult() {
        for index in 0 ..< cars.count {
            print("\(cars[index].carName) : ", terminator: "")
            for _ in 0 ..< cars[index].position {
                print("-", terminator: "")
            }
            print("")
        }
    }
}
