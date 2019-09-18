//
//  Car.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct CarState: StateRepresentable {
    let racerName: String
    let positionState: String
}

protocol StateRepresentable {
    var racerName: String { get }
    var positionState: String { get }
}

class Car {
    enum Constant {
        static let luckDeterminer = 4
    }
    
	let racerName: String
	private(set) var position = 0
    
    var positionState: String {
        let state = Array(0..<position)
            .map { _ in "-" }
            .joined()
        guard state.count > 0 else { return "" }
        return state
    }
    
    var state: StateRepresentable {
        return CarState(
            racerName: racerName,
            positionState: positionState
        )
    }

	init(racerName: String) {
		self.racerName = racerName
	}
	
	func move(luck: Int) {
        guard luck >= Constant.luckDeterminer else { return }
        position += 1
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
