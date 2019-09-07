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
    
    init(step: Int = 1) {
        self.step = step
    }
    
    mutating func moveForward(need: Bool) {
        if need {
            self.step += 1
        }
    }
    
    func stepToPrint() -> String {
        var stepStr: String = ""
        for _ in 0..<self.step {
            stepStr += "-"
        }
        return stepStr
    }
}

