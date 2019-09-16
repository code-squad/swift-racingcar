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
	
	mutating func getNumberOfCars() {
		print("자동차 대수는 몇 대 인가요?")
		numberOfCars = Int(readLine() ?? "") ?? 0
	}
	
	mutating func setup(_ numberOfCars: Int) {
		self.numberOfCars = numberOfCars
	}
	
	mutating func run() {
		result += "\n"
		for _ in 0..<3 {
			playGame()
		}
	}
	
	mutating func playGame() {
		for _ in 0..<numberOfCars {
			result += Car().makeResult()
			result += "\n"
		}
		result += "\n"
	}
}
