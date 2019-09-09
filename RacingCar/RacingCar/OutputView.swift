//
//  OutputView.swift
//  RacingCar
//
//  Created by sungchan.you on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
    let game: RacingCarGame
    
    func showWinner() {
        game.racingResults.sorted { $0.round < $1.round }.forEach {
            printRace(result: $0)
        }
    }
    
    func printRace(result: RacingResult) {
        print("Round : \(result.round + 1)")
        result.racingCars.forEach {
            Array(0..<$0.distance).forEach { _ in print("-", terminator:"") }
            print("")
        }
    }
}
