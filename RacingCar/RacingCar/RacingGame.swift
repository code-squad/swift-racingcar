//
//  RacingGame.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    static func getNumberOfCars() -> Int {
        print("자동차 대수는 몇 대 인가요?")
        return Int(readLine() ?? "") ?? 0
    }
    
    static func playGames(for times: Int) {
        print("")
        print("실행 결과")
        for _ in 0..<3 {
            let results = Array(0..<times).map { _ in RacingResult() }
            results.forEach {
                $0.display()
            }
            print("")
        }
    }
}
