//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

enum CarRacingError : Error {
    case InvalidInput(message: String)
    case InvalidRange(message: String, inputValue : Int)
}

func main() {
    //let carCount = InputView.readNumberOfCars()
    //var game = CarRacing(numberOfCars: carCount)
    
    do {
        let carNames = try InputView.readCarNames()
        let racingCount = try InputView.readRacingCount()
        
        var racing = CarRacing(carNames: carNames)
        racing.runRacing(times: racingCount)
        
        OutputView.printRacingResult(carRacing : racing)
    }
    catch CarRacingError.InvalidInput(let message) {
        OutputView.printError(errorMessage: message)
    }
    catch CarRacingError.InvalidRange(let message, let inputValue) {
        OutputView.printError(errorMessage: "\(message) -> (\(inputValue))")
    }
    catch {
        OutputView.printError(errorMessage: "Unexpected error. : \(error)")
    }
   
}

main()
