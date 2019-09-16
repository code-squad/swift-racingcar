//
//  main.swift
//  RaceCar
//
//  Created by JK on 15/05/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct OutputView {
    static func display(_ result: String) {
        print("\(result)=========")
    }
}

struct GameController {
    private let game : RaceGame
    init(with game: RaceGame) {
        self.game = game
    }
    
    func go(tries: Int, resultHandler: (String)->()) {
        for _ in 0..<tries {
            resultHandler(game.run())
        }
    }
}

func main() {
    let numberOfTry = InputView.readNumberOfTry()
    let rawName = InputView.readCarNames()
    let names = Utility.commaSplit(string: rawName)
    
    let game = RaceGame(with: names)
    guard let realGame = game else { return }
    let controller = GameController(with: realGame)
    controller.go(tries: numberOfTry, resultHandler: { result in
        OutputView.display(result)
    })
}

main()

