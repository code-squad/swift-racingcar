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
                print("\($0.name) : ", terminator:"")
                Array(0..<$0.distance).forEach { _ in print("-", terminator:"") }
                print("")
            }
            print("")
        }
    }
    
    func showWinners() {
        guard let winners = racingResult.winners() else {
            print("진행된 경기가 없습니다.")
            return
        }
        print("\(winners.joined(separator: ","))가 최종 우승 했습니다.")
    }
}

