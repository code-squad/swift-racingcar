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
    
//    static func readNumberOfCar(_ defaultNumber: Int = 3) -> Int {
//        print("=== Input ===")
//        print("자동차 대수는 몇 대 인가요?")
//        let number = Int(readLine() ?? String(defaultNumber)) ?? defaultNumber
//        print("")
//        return number
//    }
    
    static func readCarNames(_ defaultName: String = "a,b,c") -> [String] {
        //print("=== Input ===")
        print("경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분).")
        var inputNames = String(defaultName)
        let inputStr = readLine() ?? ""
        if InputView.canUseInputStr(inputStr) == true {
            inputNames = inputStr
        }
        print("")
        
        return InputView.seperatePlayerName(names: inputNames)
    }
    
    static func canUseInputStr(_ input: String) -> Bool {
        return (input.count > 1)
    }
    
    static func seperatePlayerName(names: String) -> [String] {
        let nameToSplit = names
        let namesSubsequence = nameToSplit.split(separator: ",")
        var names : [String] = []
        for str in namesSubsequence {
            names.append(String(str))
        }
        return names
    }
    
    static func readNumberOfRoundToPlay(_ defaultNumber: Int = 5) -> Int {
        print("시도할 회수는 몇 회 인가요?")
        let number = Int(readLine() ?? String(defaultNumber)) ?? defaultNumber
        print("")
        return number
    }
}
