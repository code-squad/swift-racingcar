//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

func main() {
    let carCount = InputView.readNumberOfCar()
    var game = RacingGame(numberOfCars: carCount)
    for _ in 1...3 {
        game.race()
    }
    OutputView.printGame(game: game)
}

main()
