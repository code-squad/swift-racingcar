//
//  OutputView.swift
//  RacingCar
//
//  Created by JK on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation


struct OutputView {
    static private func result(of car: Car) -> String {
        var result = ""
        result += "\(car.name): "
        let random = RandomNumber(value: Int.random(maxValue: Int.RANDOM_MAX_VALUE))
        car.moveForward(by: random)
        car.iterate{ position in
            result += "-"
        }
        result += "\n"
        return result
    }
    
    static func display(with game: RaceGame) {
        game.run{ car in
            print(result(of: car))
        }
        print("")
    }
}
