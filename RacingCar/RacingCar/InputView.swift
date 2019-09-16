//
//  InputView.swift
//  RacingCar
//
//  Created by JK on 2019/09/16.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    static private func read(with prompt: String) -> String {
        print(prompt)
        let value = readLine() ?? ""
        return value
    }
    
    static private func read(with prompt: String, default value: Int) -> Int {
        return Int(read(with: prompt)) ?? value
    }
    
    static func readNumberOfTry() -> Int {
        let count = read(with: "> 시도할 회수는 몇 회인가요?\n> ", default: 0)
        return count
    }
    
    static func readCarNames() -> String {
        let names = read(with: "> 경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분)\n> ")
        return names
    }
}

struct Utility {
    static func commaSplit(string: String) -> [String] {
        return string.split(separator: ",").map{ String($0) }
    }
}
