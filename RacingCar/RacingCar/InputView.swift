//
//  InputView.swift
//  RacingCar
//
//  Created by temphee.Reid on 06/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    static func readNumberOfCars() -> Int {
        
        print("> 자동차 대수는 몇 대 인가요?")
        print("> ", terminator:"")
        let readCarCount = readLine()
        
        return Int(readCarCount ?? "0") ?? 0
    }
    
    static func readRacingCount() -> Int {
        print("> 시도할 회수는 몇 회 인가요?")
        print("> ", terminator:"")
        let readCount = readLine()
        
        return Int(readCount ?? "0") ?? 0
    }
    
    static func readCarNames() -> [String]? {
        
        print("> 경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분)")
        print("> ", terminator:"")
        let readCarNames = readLine()
        
        return readCarNames?.components(separatedBy: ",")
    }
}
