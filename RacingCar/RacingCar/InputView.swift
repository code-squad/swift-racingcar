//
/******************************************************************************
 * File Name        : InputView.swift
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

struct InputView {
    
    static func readNumberOfCar(_ defaultNumber: Int = 3) -> Int {
        print("=== Input ===")
        print("자동차 대수는 몇 대 인가요?")
        let number = Int(readLine() ?? String(defaultNumber)) ?? defaultNumber
        print("")
        return number
    }

}
