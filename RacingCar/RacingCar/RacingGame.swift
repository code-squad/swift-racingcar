//
/******************************************************************************
 * File Name        : RacingGame.swift
 * Description      : RacingCar
 *******************************************************************************
 * Copyright (c) 2002-2019 KineMaster Corp. All rights reserved.
 * https://www.kinemastercorp.com/
 *
 * THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
 * PURPOSE.
 ******************************************************************************/

import Foundation


class RacingGame {
    var cars = [Car]()
    
    init(numberOfCar: Int) {
        for _ in 1...numberOfCar {
            self.cars.append(Car())
        }
    }
    
    func playOneRound() {
        for i in 0..<self.cars.count{
            let random = Int.random(in: 0...9)
            let isMove = self.needToMove(random: random)
            self.cars[i].playOneRound(canMove: isMove)
        }
    }
    
    static let MoveOrNot = 4
    func needToMove(random: Int) -> Bool {
        return random >= RacingGame.MoveOrNot
    }
    
    func playGame(times: Int) {
        for _ in 1...times {
            self.playOneRound()
        }
    }
    
    func run() {
        self.playGame(times: 3)
    }
}
