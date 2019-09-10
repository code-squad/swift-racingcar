//
/******************************************************************************
 * File Name        : OutputView.swift
 * Description      : RacingCar
 *******************************************************************************
 * Copyright (c) 2002-2019 KineMaster Corp. All rights reserved.
 * https://www.kinemastercorp.com/
 *
 * THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
 * PURPOSE.
 ******************************************************************************/

import Foundation

struct OutputView {
    
    static func printGame(_ game: RacingGame) {
        print("=== output ===")
        
        let roundCount = OutputView.detectRoundCount(car: game.cars.first)
        
        for i in 0 ..< roundCount {
            OutputView.printOneRound(at: i, cars: game.cars)
            print("")
        }
    }
    
    static func detectRoundCount(car: Car?) -> Int {
        guard let car = car else {
            return 0
        }
        return car.stepHistory.count
    }
    
    static func printOneRound(at index: Int, cars: [Car]) {
        for car in cars {
            print(car.printStepHistory(at: index))
        }
    }
}
