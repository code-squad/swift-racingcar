//
//  InputView.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation


struct InputView {
    
    func racingCars() -> [RacingCar] {
        let numberOfCars = inputView.readNumberOfCar()
        var racingCars = [RacingCar]()
        for _ in 0..<numberOfCars {
            racingCars.append(RacingCar())
        }
        return racingCars
    }
    
    private func readNumberOfCar() -> Int {
        print("자동차 대수는 몇 대 인가요?")
        return Int(readLine() ?? "0") ?? 0
    }
}
