//
//  RacingGameTest.swift
//  RacingCarTest
//
//  Created by 공명진 on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingGameTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testWinRaces() {
        let cars = [
            Car(name: "a"), Car(name: "b"), Car(name:"c")
        ]
        cars[0].position = 4
        cars[1].position = 3
        cars[2].position = 5
        
        let racingGame = RacingGame(cars: cars, count: 3)
        XCTAssertTrue(racingGame.winRaces().first!.carName == "c")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
