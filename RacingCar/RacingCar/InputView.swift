//
//  InputView.swift
//  RacingCar
//
//  Created by hoemoon on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
	static func getRacerList() -> [String] {
		print("경주할 자동차 이름을 입력하세요(이름은 쉼표(,)를 기준으로 구분).")
		guard let input = readLine() else { return [] }
		return input.split(separator: ",").map { String($0) }
	}
	
	static func getNumberOfGames() -> Int {
		print("시도할 회수는 몇 회 인가요?")
		return Int(readLine() ?? "") ?? 0
	}

}
