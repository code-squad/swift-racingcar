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
    
    convenience init(numberOfCar: Int) {
        var names: [String] = []
        for _ in 1...numberOfCar {
            names.append("")
        }
        self.init(carNames: names)
    }
    
    init(carNames: [String]) {
        for carName in carNames {
            var car: Car
            if !carName.isEmpty {
                car = Car(name: carName)
            } else {
                car = Car()
            }
            self.cars.append(car)
        }
    }
    
    private func playOneRound() {
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
    
    func run(roundsToPlay: Int = 3) {
        self.playGame(times: roundsToPlay)
    }
    
    func winners() -> [Car] {
        var maxStepCar = Car(initStep: 0)
        for car in self.cars {
            if maxStepCar < car {
                maxStepCar = car
            }
        }
        var winners: [Car] = []
        for car in self.cars {
            if car == maxStepCar {
                winners.append(car)
            }
        }
        return winners
    }
}
