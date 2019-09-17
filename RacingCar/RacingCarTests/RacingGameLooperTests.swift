//
//  RacingGameLooperTests.swift
//  RacingCarTests
//
//  Created by sungchan.you on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

import XCTest

class RacingGameLooperTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    lazy var looper: RacingGameLooper = {
        let cars = [RacingCar(name: "Zombie"), RacingCar(name: "Ghost")]
        let game = RacingCarGame(racingCars: cars)
        return RacingGameLooper(game: game)
    }()
    
    func test_result_should_have_three_round() {
        looper.play(count: 3)
        XCTAssertTrue(looper.racingResult.roundResults.count == 3)
    }
    
    func test_no_result_should_exist() {
        looper.play(count: 0)
        XCTAssertTrue(looper.racingResult.roundResults.count == 0)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
