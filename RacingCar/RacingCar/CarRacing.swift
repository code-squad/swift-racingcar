//
//  CarRacing.swift
//  RacingCar
//
//  Created by temphee.Reid on 06/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct CarRacing {
    private(set) var racingCars : Array<Car>!
    private(set) var racingResultsString : String
    
    init(numberOfCars : Int) {
        self.init(carNames: [String](repeating: "None", count: numberOfCars))
    }
    
    init(carNames : [String]) {
        self.racingCars = []
        for carName in carNames {
            self.racingCars.append(Car(name: carName))
        }
        racingResultsString = ""
    }
    
    mutating func runRacing(times : Int) {
        self.resetResult()
        
        for _ in 1...times {
            self.moveRacingCars()
            //self.racingResultsString.append("race \(count).\r\n")
            self.racingResultsString.append("\(self.getMoveResult())\r\n")
        }
    }
    
    private mutating func moveRacingCars() {
        for carIndex in 0..<racingCars.count {
            racingCars[carIndex].tryToMoveForward()
        }
    }
    
    private func getMoveResult() -> String {
        var resultString : String = ""
        for car in self.racingCars {
            resultString.append("\(car.getDistanceString())\r\n")
        }
        
        return resultString
    }
    
    private mutating func resetResult() {
        racingResultsString = ""
        
        for index in self.racingCars.indices {
            self.racingCars[index].resetDistance()
        }
    }
    
    func getRacingResult() -> String {
        return racingResultsString
    }
    
    
    func getMaxDistance(racedCars: [Car]) -> Int? {
        return racedCars.map { $0.distance }.max()
    }
    
    func getWinnerCars() -> [Car]? {
        guard let maxDistance = getMaxDistance(racedCars: self.racingCars) else {
            return nil
        }
        
        let winnerCars = getWinnerCars(racedCars: self.racingCars, maxDistance: maxDistance)
        return winnerCars
    }
    
    func getWinnerCars(racedCars:[Car], maxDistance:Int) -> [Car] {
        return racedCars.filter {$0.distance == maxDistance}
    }
}
