//
//  CarRacing.swift
//  RacingCar
//
//  Created by temphee.Reid on 06/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct CarRacing {
    var numberOfCars : Int
    var racingCars : Array<Car>!
    var racingResultsString : String
    
    init(numberOfCars : Int) {
        self.numberOfCars = numberOfCars
        self.racingCars = [Car](repeating: Car("None"), count: self.numberOfCars)
        racingResultsString = ""
    }
    
    init(carNames : [String]) {
        self.numberOfCars = carNames.count
        self.racingCars = []
        for carName in carNames {
            self.racingCars.append(Car(carName))
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
        
        self.racingResultsString.append("\(self.getWinnerResult(racedCars: racingCars))\r\n")
    }
    
    private mutating func moveRacingCars() {
        for carIndex in 0..<numberOfCars {
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
    
    private func getWinnerResult(racedCars: [Car]) -> String {
        let winners = selectFinalWinner(racedCars)
        let winnerString = winners.joined(separator:", ")
        let resultString = winnerString + "가 최종 우승했습니다."
        
        return resultString
    }
    
    private func selectFinalWinner(_ racedCars : [Car]) -> [String] {
        let maxDistance = racedCars.map { $0.distance }.max()
        let winnerCars = racedCars.filter {$0.distance == maxDistance}
        
        var finalWinner : [String] = []
        
        for winner in winnerCars {
            finalWinner.append(winner.name)
        }
        
        return finalWinner
    }
    
    private mutating func resetResult() {
        racingResultsString = ""
        
        for index in self.racingCars.indices {
            self.racingCars[index].resetDistance()
        }
    }
    
    func printResult() {
        print(racingResultsString)
    }
    
}
