//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

print("자동차 대수는 몇 대 인가요?")

let numberOfCars: Int = Int(readLine() ?? "0") ?? 0

var game = RacingGame(numberOfCars: numberOfCars)

print("실행 결과")

for _ in 1...3 {
    game.race()
    game.printRace()
}
