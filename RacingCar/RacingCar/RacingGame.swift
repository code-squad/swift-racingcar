//
//  RacingGame.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
	var numberOfCars = 0
	var result = ""
	
	enum RacingError: Error {
		case invalidNumberOfCars
		case notReadyForRacing
	}
	
	func getNumberOfCars() -> Int {
		print("자동차 대수는 몇 대 인가요?")
		return Int(readLine() ?? "") ?? 0
	}
	
	@discardableResult
	mutating func setup(with numberOfCars: Int) throws -> Bool {
		guard numberOfCars > 0 else {
			throw RacingError.invalidNumberOfCars
		}
		self.numberOfCars = numberOfCars
		return true
	}
	
	@discardableResult
	mutating func run() throws -> Bool {
		guard numberOfCars != 0 else {
			throw RacingError.notReadyForRacing
		}
		result += "\n"
		for _ in 0..<3 {
			playGame()
		}
		return true
	}
	
	private mutating func playGame() {
		for _ in 0..<numberOfCars {
			result += Car().makeResult()
			result += "\n"
		}
		result += "\n"
	}
}
