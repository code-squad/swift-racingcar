//
//  InputView.swift
//  RacingCar
//
//  Created by 공명진 on 2019/09/10.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    
    static func readCars() -> [Car] {
        print("Please enter a car name to join. (Separate names with commas)")
        return cars(inputValue: readLine() ?? "")
    }
    
    static func readIterations() -> Int {
        print("Please enter the number of challenges")
        return count(inputValue: readLine() ?? "")
    }
    
    static func cars(inputValue: String) -> [Car] {
        return inputValue.split(separator: ",")
            .map { String($0) }
            .map { Car(name: $0) }
    }
    
    static func count(inputValue: String) -> Int {
        return Int(inputValue) ?? 0
    }
}
