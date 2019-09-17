//
//  main.swift
//  RaceCar
//
//  Created by JK on 15/05/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

func main() {
    let numberOfTry = InputView.readNumberOfTry()
    let rawName = InputView.readCarNames()
    let names = Utility.commaSplit(string: rawName)
    
    let game = RaceGame(with: names)
    guard let realGame = game else { return }
    let controller = GameController(with: realGame)
    controller.go(tries: numberOfTry,
                gameHandler:
                {   game in
                    OutputView.display(with: game)
                }
    )
}

main()

