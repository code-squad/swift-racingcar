//
//  RacingGame.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
	var numberOfGames = 0
	var cars = [Car]()
	var result = ""
	
	enum RacingError: Error {
		case invalidNumberOfGames
		case invalidRacerList
		case notReadyForRacing
	}
			
	@discardableResult
	mutating func setup(numberOfGames: Int, racerList: [String]) throws -> Bool {
		guard numberOfGames > 0 else {
			throw RacingError.invalidNumberOfGames
		}
		guard racerList.count > 0 else {
			throw RacingError.invalidRacerList
		}
		self.numberOfGames = numberOfGames
		self.cars = racerList.map { Car(racerName: $0) }
		return true
	}
	
	@discardableResult
	mutating func run() throws -> Bool {
		guard numberOfGames > 0, cars.count > 0 else {
			throw RacingError.notReadyForRacing
		}
		result += "\n"
		for _ in 0..<numberOfGames {
			playGame()
		}
		return true
	}
	
	private mutating func playGame() {
		for (_, car) in cars.enumerated() {
			car.move()
			result += car.currentState()
		}
		result += "\n"
	}
	
	var winnerMessage: String {
		return "\(topRacerList.joined(separator: ", "))가 최종 우승했습니다."
	}
	
	var topRecord: Int {
		guard let position = cars.sorted().last?.position else {
			return 0
		}
		return position
	}
	
	var topRacerList: [String] {
		return cars
			.filter { $0.position == topRecord }
			.map { $0.racerName }
	}
}
