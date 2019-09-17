//
//  Car.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Car {
	let racerName: String
	private(set) var position = 0
	
	init(racerName: String) {
		self.racerName = racerName
	}
	
	func move(luck: Int) {
		if luck >= 4 {
			position += 1
		}
	}
	
	func currentState() -> String {
		let state = Array(0..<position)
			.map { _ in "-" }
			.joined()
		guard state.count > 0 else { return "" }
		return "\(racerName) : \(state) \n"
	}
}

extension Car: Comparable {
	static func < (lhs: Car, rhs: Car) -> Bool {
		return lhs.position < rhs.position
	}
	
	static func == (lhs: Car, rhs: Car) -> Bool {
		return lhs.racerName == rhs.racerName
	}
}
