//
//  InputView.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation


struct InputView {
    func readNumberOfRounds() -> UInt {
        print("시도할 회수는 몇 회 인가요?")
        return UInt(readLine() ?? "0") ?? 0
    }
    
    func readNameOfCars() -> [String] {
        print("경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분).")
        return readLine()?.split(separator: ",").map({
            guard let encodedString = String($0).removingPercentEncoding else {
                return String($0).trimmingCharacters(in: .whitespacesAndNewlines)
            }
            return encodedString.trimmingCharacters(in: .whitespacesAndNewlines)
        }) ?? []
    }
}
