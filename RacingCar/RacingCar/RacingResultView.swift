//
//  OutputView.swift
//  RacingCar
//
//  Created by sungchan.you on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingResultView {
    let racingResult: RacingResult
    
    func showRacingResult() {
        racingResult.roundResults.forEach {
            $0.racingCars.forEach {
                Array(0..<$0.distance).forEach { _ in print("-", terminator:"") }
                print("")
            }
            print("")
        }
    }
}

