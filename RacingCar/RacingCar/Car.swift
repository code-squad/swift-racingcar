//
//  Car.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Car {
	func makeResult() -> String {
		var result = ""
		for _ in 0..<3 {
			let random = Int.random(in: 0...9)
			if random >= 4 {
				result += "-"
			}
		}
		return result
	}
}
