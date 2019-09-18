//
//  RacingGame.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame: Printable {
	enum RacingError: Error {
		case invalidNumberOfGames
		case invalidRacerList
		case notReadyForRacing
	}
    
    var records = [StateRepresentable]()
	var winnerMessage: String {
		return "\(topRacerList.joined(separator: ", "))가 최종 우승했습니다."
	}

	private var numberOfGames = 0
	private var cars = [Car]()
	
	var topRecord: Int {
		guard let position = cars.sorted().last?.position else {
			return 0
		}
		return position
	}
	
	var topCarList: [Car] {
		guard topRecord > 0 else { return [] }
		return cars
			.filter { $0.position == topRecord }
	}
	
	var topRacerList: [String] {
		guard topRecord > 0 else { return [] }
		return topCarList
			.map { $0.racerName }
	}
    
    init(numberOfGames: Int, racerList: [String]) throws {
        guard numberOfGames > 0 else {
            throw RacingError.invalidNumberOfGames
        }
        guard racerList.count > 0 else {
            throw RacingError.invalidRacerList
        }
        self.numberOfGames = numberOfGames
        self.cars = racerList.map { Car(racerName: $0) }
    }
    
	@discardableResult
	mutating func run() throws -> Bool {
		guard numberOfGames > 0, cars.count > 0 else {
			throw RacingError.notReadyForRacing
		}
        records = Array(0..<numberOfGames)
            .flatMap { _ in playGame() }
		return true
	}
    
    func playGame() -> [StateRepresentable] {
        let divider = CarState(racerName: "", positionState: "")
        var result = [StateRepresentable]()
        for car in cars {
            car.move(luck: makeLuckNumber())
            result.append(car.state)
        }
        result.append(divider)
        return result
    }
    
    private func makeLuckNumber() -> Int {
        return Int.random(in: 0...9)
    }
}
