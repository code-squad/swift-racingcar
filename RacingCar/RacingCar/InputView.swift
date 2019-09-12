//
//  InputView.swift
//  RacingCar
//
//  Created by junwoo on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    
    static func readNumberOfCar() -> Int {
        print("자동차 대수는 몇 대 인가요?")
        let numberOfCars: Int = Int(readLine() ?? "0") ?? 0
        return numberOfCars
    }
}
