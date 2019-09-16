//
//  RacingCarGameTests.swift
//  RacingCarTests
//
//  Created by sungchan.you on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingCarGameTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_run_result_should_have_two_cars() {
        let cars = [RacingCar(name: "Zombie"), RacingCar(name: "Ghost")]
        var game = RacingCarGame(racingCars: cars)
        let roundResult = game.run()
        XCTAssertTrue(cars.count == roundResult.racingCars.count)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
