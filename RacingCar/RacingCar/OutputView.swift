//
//  OutputView.swift
//  RacingCar
//
//  Created by temphee.Reid on 06/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation



struct OutputView {
    static func printRacingResult(carRacing : CarRacing) -> Void {
        // print racing result
        print(carRacing.getRacingResult())
        
        // print winner
        guard let winnerCars = carRacing.getWinnerCars() else {
            print("there is no winner.")
            return
        }
        
        var finalWinner : [String] = []
        
        for winner in winnerCars {
            finalWinner.append(winner.name)
        }
        
        let winnerString = finalWinner.joined(separator:", ") + " 가 최종 우승했습니다."        
        print(winnerString)
    }
    
    static func printError(errorMessage : String) -> Void {
        print(errorMessage)
    }
}
