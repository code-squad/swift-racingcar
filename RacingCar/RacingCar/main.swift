//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

func main() {
    let carNames = InputView.readCarNames()
    let game = RacingGame(carNames: carNames)
    
    let numberOfRounds = InputView.readNumberOfRoundToPlay()
    game.run(roundsToPlay: numberOfRounds)
    OutputView.printGame(game)
    OutputView.printWinner(game: game)
}

main()

