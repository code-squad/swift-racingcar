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
        
        let racingGame = RacingGame(cars: cars, iterations: 3)
        XCTAssertTrue(racingGame.winRaces().first!.carName == "c")
    }
    
    func testSetPosition() {
        let cars = [
            Car(name: "a"), Car(name: "b"), Car(name:"c")
        ]
        
        let racingGame = RacingGame(cars: cars, iterations: 1)
        racingGame.setPosition(atIndex: 0, random: 5)
        racingGame.setPosition(atIndex: 1, random: 2)
        racingGame.setPosition(atIndex: 2, random: 9)
        
        XCTAssertTrue(cars[0].position == 1)
        XCTAssertTrue(cars[1].position == 0)
        XCTAssertTrue(cars[2].position == 1)
        
        XCTAssertFalse(cars[0].position == 0)
        XCTAssertFalse(cars[1].position == 1)
        XCTAssertFalse(cars[2].position == 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
