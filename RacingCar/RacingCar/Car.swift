//
//  Car.swift
//  RacingCar
//
//  Created by temphee.Reid on 06/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Car {
    public var name : String
    public var distance : Int = 0
    
    init(name : String = "None") {
        self.name = name.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func tryToMoveForward() -> Bool {
        let moveForwardResult = RandomMove.canMoveForward(with: Int.random(in: 0...9))
        distance += moveForwardResult ? 1 : 0
        
        return moveForwardResult
    }
    
    func getDistanceString() -> String {
        var distanceString = "\(self.name)\t: "
        
        for _ in 0..<self.distance {
            distanceString.append("-")
        }
        
        return distanceString
    }
    
    mutating func resetDistance() {
        distance = 0
    }
}

