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
    var game = RacingGame(numberOfCar: carCount)
    game.run()
    OutputView.printGame(game)
}

main()
