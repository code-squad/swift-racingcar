//
//  RacingGameLooper.swift
//  RacingCar
//
//  Created by sungchan.you on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGameLooper {
    
    private(set) var racingResult: RacingResult
    private var game: RacingCarGame
    
    init(game: RacingCarGame) {
        self.game = game
        self.racingResult = RacingResult()
    }
    
    mutating func play(count: UInt) {
        for _ in 0..<count {
            let result = game.run()
            racingResult.write(result: result)
        }
    }
}
