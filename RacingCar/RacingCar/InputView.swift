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
            throw CarRacingError.InvalidInput(message: "Failed to get number of cars.")
        }
        guard numberOfCars > 0 else {
            throw CarRacingError.InvalidRange(message: "Number of cars should be greater than 0", inputValue: numberOfCars)
        }
        
        return numberOfCars
    }
    
    static func readRacingCount() throws -> Int {
        guard let racingCount = self.askToUserInt(messge: "> 시도할 회수는 몇 회 인가요?") else {
            throw CarRacingError.InvalidInput(message: "Failed to get racing count")
        }
        guard racingCount > 0 else {
            throw CarRacingError.InvalidRange(message: "Racing count should be greater than 0.", inputValue: racingCount)
        }
        
        return racingCount
    }
    
    static func readCarNames() throws -> [String] {
        guard let names = self.askToUserStringArray(messge: "> 경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분)") else {
            throw CarRacingError.InvalidInput(message: "Failed to get car names")
        }
        
        guard names.count > 1 else {
            throw CarRacingError.InvalidRange(message: "Number of car names should be greater than 1", inputValue: names.count)
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
        let readStringArray = readLine()
        
        return readStringArray?.components(separatedBy: ",")
    }
}
