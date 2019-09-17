//
//  RacingGameTests.swift
//  RacingGameTests
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingGameTests: XCTestCase {
	var sut: RacingGame!
	
	override func setUp() {
			sut = RacingGame()
	}
	
	func test_WhenSetupWithInvalidInput_ThrowError() {
		let numberOfCars = -100
		let signal = try? sut.setup(with: numberOfCars)
		XCTAssertNil(signal)
	}
	
	func test_WhenSetupGameWithValidInput_GameHasThatNumber() throws {
		var numberOfCars = 3
		let signal1 = try sut.setup(with: numberOfCars)
		
		XCTAssert(signal1)
		XCTAssert(sut.numberOfCars == numberOfCars)
		
		numberOfCars = 100
		
		let signal2 = try sut.setup(with: numberOfCars)
		XCTAssert(signal2)
		XCTAssert(sut.numberOfCars == numberOfCars)
	}
	
	func test_WhenRunGameWithNotSetup_ThrowError() {
		let signal = try? sut.run()
		XCTAssertNil(signal)
	}
	
	func test_WhenRunGameWithSetup_ReturnValidSignal() throws {
		sut.numberOfCars = 3
		let signal = try sut.run()
		XCTAssert(signal)
	}
}
