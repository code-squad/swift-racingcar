//
//  RacingCarTests.swift
//  RacingCarTests
//
//  Created by sungchan.you on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingCarTests: XCTestCase {

    var racingCar = RacingCar(name: "Zombie")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_distance_should_return_zero() {
        let numbers: [UInt32] = Array(0...4)
        numbers.forEach{
            let result = racingCar.distance(for: $0)
            XCTAssertEqual(result, 0)
        }
    }

    func test_distance_should_return_one() {
        let numbers: [UInt32] = Array(5...10)
        numbers.forEach{
            let result = racingCar.distance(for: $0)
            XCTAssertEqual(result, 1)
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_accumulated_distance_should_not_decrease() {
        var prevDistance = racingCar.distance
        for _ in 0..<1000 {
            racingCar.race()
            XCTAssertLessThanOrEqual(prevDistance, racingCar.distance)
            prevDistance = racingCar.distance
        }
    }
    
    func test_accumulated_distance_should_less_than_or_equal_to_total_round() {
        for _ in 0..<1000 {
            racingCar.race()
        }
        XCTAssertLessThanOrEqual(racingCar.distance, 1000)
    }
}
