//
//  RacingGame.swift
//  RacingCar
//
//  Created by 공명진 on 2019/09/11.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    public let cars: [Car]
    private let iterations: Int
    
    init(cars: [Car], iterations: Int) {
        self.cars = cars
        self.iterations = iterations
    }
    
    func setPosition(atIndex index: Int, random: Int) {
        let isForward = random >= 4 ? true : false
        cars[index].position = (isForward ? 1 : 0)
    }
    
    func run() {
        for _ in 0 ..< iterations {
            for index in 0 ..< cars.count {
                setPosition(atIndex: index, random: Int.random(in: 0...9))
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
}
