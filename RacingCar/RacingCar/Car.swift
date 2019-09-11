//
/******************************************************************************
 * File Name        : Car.swift
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


struct Car {
    var step: Int
    var stepHistory: [Int] = []
    
    init(initStep: Int = 1) {
        self.step = initStep
        self.stepHistory = []
    }
    
    mutating func playOneRound(canMove: Bool) {
        if canMove {
            self.step += 1
        }
        self.stepHistory.append(self.step)
    }
    
    func printStep(_ step: Int) -> String {
        var str: String = ""
        for _ in 0 ..< step {
            str += "-"
        }
        return str
    }
    
    func printStepHistory(at: Int) -> String {
        if self.stepHistory.count > at {
            return self.printStep(self.stepHistory[at])
        }
        return ""
    }
    
}

