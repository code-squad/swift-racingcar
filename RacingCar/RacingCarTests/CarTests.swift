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
		sut = Car()
	}
	
	func test_IsCarReturnValidValue() {
		let results = Array(1...100).map { _ in sut.makeResult() }
		let filtered = results.filter { $0.count > 3 }
		XCTAssert(filtered.count == 0)
	}
}
