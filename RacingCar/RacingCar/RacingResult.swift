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
    
    func winners() -> [String]? {
        guard let lastRace = roundResults.last,
            let distance = lastRace.racingCars.map({ $0.distance }).max() else {
                return nil
        }
        return lastRace.racingCars.filter({ $0.distance == distance }).map { $0.name }
    }
}
