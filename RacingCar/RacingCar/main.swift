//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation


func main() {
    //let carCount = InputView.readNumberOfCars()
    //var game = CarRacing(numberOfCars: carCount)
    
    guard let carNames = InputView.readCarNames() else {
        print("Failed to get car names")
        return
    }
    
    let racingCount = InputView.readRacingCount()
    if racingCount <= 0 {
        print("Racing count should be greater than 0.")
        return
    }
    
    var racing = CarRacing(carNames: carNames)
    racing.runRacing(times: racingCount)
    
    OutputView.printGameResult(carRacing : racing)
}

main()
