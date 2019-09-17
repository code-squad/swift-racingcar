//
//  GameController.swift
//  RacingCar
//
//  Created by JK on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct GameController {
    private let game : RaceGame
    init(with game: RaceGame) {
        self.game = game
    }
    
    func go(tries: Int, gameHandler: (RaceGame)->()) {
        for _ in 0..<tries {
            gameHandler(game)
        }
    }
}

