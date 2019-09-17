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
	
	func test_WhenSetupWithInvalidInput_ThenThrowError() {
		let signal1 = try? sut.setup(
			numberOfGames: .invalidNumberOfGames,
			racerList: .validRacerList
		)
		XCTAssertNil(signal1)
		
		let signal2 = try? sut.setup(
			numberOfGames: .validNumberOfGames,
			racerList: .invalidRacerList
		)
		XCTAssertNil(signal2)
	}
	
	func test_WhenSetupGameWithValidInput_ThenGetValidSignal() throws {
		let signal1 = try sut.setup(
			numberOfGames: .validNumberOfGames,
			racerList: .validRacerList
		)
		XCTAssert(signal1)
	}
	
	
	func test_WhenRunGameWithNotSetup_ThrowError() throws {
		let signal = try? sut.run()
		XCTAssertNil(signal)
	}
	
	func test_WhenRunGameWithSetup_ReturnValidSignal() throws {
		try sut.setup(
			numberOfGames: .validNumberOfGames,
			racerList: .validRacerList
		)
		let signal = try sut.run()
		XCTAssert(signal)
	}
	
	func test_WhenRunGame_ThenGetTopRecord() throws {
		try sut.setup(
			numberOfGames: .validNumberOfGames,
			racerList: .validRacerList
		)
		try sut.run()
		XCTAssert(sut.topRecord > 0)
	}
	
	func test_WhenRunGame_ThenGetTopRecordCar() throws {
		try sut.setup(
			numberOfGames: .validNumberOfGames,
			racerList: .validRacerList
		)
		try sut.run()
		XCTAssert(sut.topCarList.count > 0)
	}
	
	func test_WhenRunGame_ThenGetTopRacerLists() throws {
		try sut.setup(
			numberOfGames: .validNumberOfGames,
			racerList: .validRacerList
		)
		try sut.run()
		XCTAssert(sut.topRacerList.count > 0)
	}
}

extension Int {
	static let validNumberOfGames = 10
	static let invalidNumberOfGames = -100
}

extension Array where Element == String {
	static let invalidRacerList = [String]()
	static let validRacerList = ["cocoa", "kakao", "swift"]
}
