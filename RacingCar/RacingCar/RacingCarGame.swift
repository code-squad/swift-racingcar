//
//  RacingCarGame.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingCarGame {
    private let numberOfPlay: Int
    private let racingCars: [RacingCar]
    
    init(numberOfPlay:Int, racingCars: [RacingCar]) {
        self.numberOfPlay = numberOfPlay
        self.racingCars = racingCars
    }
    
    func play() {
        var racingCars = self.racingCars
        for _ in 0..<numberOfPlay {
            for index in 0..<racingCars.count {
                if self.shouldGo {
                    racingCars[index].go()
                }
                racingCars[index].showTravels()
            }
            print("")
        }
    }
    
    var shouldGo: Bool {
        return arc4random_uniform(10) > 4 ? true : false
    }
}
