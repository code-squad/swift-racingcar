//
//  RacingGame.swift
//  RacingCar
//
//  Created by dominico park on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    let numberOfCars: Int
    var races = [Int:Int]()
    
    init(numberOfCars: Int) {
        self.numberOfCars = numberOfCars
    }
    
    mutating func race() {
        for index in 1...numberOfCars {
            let distance: Int = Int.random(in: 0...9) >= 4 ? 1 : 0
            if let accumulatedDistance = races[index] {
                races[index] = accumulatedDistance + distance
            } else {
                races[index] = distance
            }
        }
    }
    
    func printRace() {
        for car in 1...numberOfCars {
            if let distance = races[car] {
                for _ in 0..<distance {
                    print("-", terminator: "")
                }
            }
            print("")
        }
        print("")
    }
}
