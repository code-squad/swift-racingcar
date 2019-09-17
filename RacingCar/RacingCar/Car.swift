//
//  Car.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Car: Comparable {
	static func < (lhs: Car, rhs: Car) -> Bool {
		return lhs.position < rhs.position
	}
	
	static func == (lhs: Car, rhs: Car) -> Bool {
		return lhs.racerName == rhs.racerName
	}
	
	let racerName: String
	var position = 0
	
	init(racerName: String) {
		self.racerName = racerName
	}
	
	func move() {
		let random = Int.random(in: 0...9)
		if random >= 4 {
			position += 1
		}
	}
	
	func currentState() -> String {
		let state = Array(0..<position)
			.map { _ in "-" }
			.joined()
		return "\(racerName) : \(state) \n"
	}
}
