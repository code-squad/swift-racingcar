//
//  InputView.swift
//  RacingCar
//
//  Created by junwoo on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    
    static func readCars() -> [Car] {
        print("경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분).")
        let input:String = readLine() ?? ""
        let namesOfCars = input.split(separator: ",").map { String($0) }
        let cars = namesOfCars.map { Car(name: $0) }
        return cars
    }
    static func readNumberOfRounds() -> Int {
        print("시도할 회수는 몇 회 인가요?")
        let numberOfRounds: Int = Int(readLine() ?? "0") ?? 0
        return numberOfRounds
    }
}
