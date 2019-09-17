//
//  CarTests.swift
//  RacingCarTests
//
//  Created by hoemoon on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class CarTests: XCTestCase {
	var sut: Car!
	
	override func setUp() {
		sut = Car(racerName: "cocoa")
	}
	
	func test_WhenBadLuck_ThenPositionNotChanged() {
		XCTAssert(sut.position == 0)
		sut.move(luck: 3)
		XCTAssert(sut.position == 0)
	}
	
	func test_WhenGoodLuck_ThenPositionChanged() {
		XCTAssert(sut.position == 0)
		sut.move(luck: 7)
		XCTAssert(sut.position == 1)
	}
	
	func test_WhenBadLuck_HasNotState() {
		XCTAssert(sut.position == 0)
		sut.move(luck: 3)
		XCTAssert(sut.currentState().count == 0)
	}
	
	func test_WhenGoodLuck_HasState() {
		XCTAssert(sut.position == 0)
		sut.move(luck: 7)
		XCTAssert(sut.currentState().count != 0)
	}
}
