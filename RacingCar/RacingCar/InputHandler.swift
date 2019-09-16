//
/******************************************************************************
 * File Name        : InputHandler.swift
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

struct InputHandler {
    
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
    
}
