//
//  RacingCarTests.swift
//  RacingCarTests
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingCarTests: XCTestCase {
    func test_racingResult_hasAppropriateDistance() {
        let result = RacingResult()
        XCTAssertLessThan(result.distance, 4, "레이싱 결과는 3 이하 입니다.")
        XCTAssertGreaterThan(result.distance, 0)
    }
}
