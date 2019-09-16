//
//  RacingResult.swift
//  RacingCar
//
//  Created by sungchan.you on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingResult {
    
    var roundResults: [RoundResult] = Array()
    
    mutating func write(result: RoundResult) {
        roundResults.append(result)
    }
}
