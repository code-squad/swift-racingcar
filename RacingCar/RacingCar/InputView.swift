//
//  InputView.swift
//  RacingCar
//
//  Created by temphee.Reid on 06/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    static func readNumberOfCars() throws -> Int {
        guard let numberOfCars = self.askToUserInt(messge: "> 자동차 대수는 몇 대 인가요?") else {
            throw CarRacingError.InvalidNumberOfCars
        }
        guard numberOfCars <= 0 else {
            throw CarRacingError.InvalidRange
        }
        
        return numberOfCars
    }
    
    static func readRacingCount() throws -> Int {
        guard let racingCount = self.askToUserInt(messge: "> 시도할 회수는 몇 회 인가요?") else {
            throw CarRacingError.InvalidRacingCount
        }
        guard racingCount > 0 else {
            throw CarRacingError.InvalidRange
        }
        
        return racingCount
    }
    
    static func readCarNames() throws -> [String] {
        guard let names = self.askToUserStringArray(messge: "> 경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분)") else {
            throw CarRacingError.InvalidCarNames
        }
        
        guard names.count > 0 else {
            throw CarRacingError.InvalidCarNames
        }
        
        return names
    }
    
    private static func askToUserInt(messge : String) -> Int? {
        print(messge)
        print("> ", terminator:"")
        
        guard let readAnswer = readLine() else {
            return nil
        }
        
        return Int(readAnswer)
    }
    
    private static func askToUserStringArray(messge : String) -> [String]? {
        print(messge)
        print("> ", terminator:"")
        let readCarNames = readLine()
        
        return readCarNames?.components(separatedBy: ",")
    }
}
