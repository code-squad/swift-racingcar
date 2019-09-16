//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct OutputView {
    static func printResult(_ game : RaceGame, tries : Int) {
        for _ in 0..<tries {
            print(game.run())
            print("=========")
        }
    }
}

func main() {
    let game = RaceGame(tries: 3)
    OutputView.printResult(game, tries: 3)
}


main()
