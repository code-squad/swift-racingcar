//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

enum CarRacingError : Error {
    case InvalidCarNames
    case InvalidNumberOfCars
    case InvalidRacingCount
    case InvalidRange
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
    catch CarRacingError.InvalidCarNames {
        OutputView.printError(errorMessage: "Failed to get car names.")
    }
    catch CarRacingError.InvalidNumberOfCars {
        OutputView.printError(errorMessage: "Failed to get number of cars.")
    }
    catch CarRacingError.InvalidRacingCount {
        OutputView.printError(errorMessage: "Racing count should be greater than 0.")
    }
    catch CarRacingError.InvalidRange {
        OutputView.printError(errorMessage: "Invalid ragne.")
    }
    catch {
        OutputView.printError(errorMessage: "Unknown error.")
    }    
   
}

main()
