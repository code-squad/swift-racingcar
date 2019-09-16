//
//  UnitTestCars.swift
//  UnitTestCars
//
//  Created by JK on 2019/09/16.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class UnitTestRaceCar: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testRaceGame_Make_Success() {
        let dummy = ["jk"]
        let game = RaceGame(with: dummy)
        XCTAssertNotNil(game)
    }
    
    func testRaceGame_Make_Fail() {
        let game = RaceGame(with: [])
        XCTAssertNil(game)
    }
    
    func testRandomNumber_Make_Success() {
        let random = RandomNumber(value: Int.random(maxValue: Int.RANDOM_MAX_VALUE))
        XCTAssertNotNil(random)
    }
    
    func testRandomNumber_isGoing_4_Success() {
        let random = RandomNumber(value: 4)
        XCTAssertTrue(random.isGoing())
    }
    
    func testRandomNumber_isGoing_5_Success() {
        let random = RandomNumber(value: 5)
        XCTAssertTrue(random.isGoing())
    }
    
    func testRandomNumber_NotGoing_3() {
        let random = RandomNumber(value: 3)
        XCTAssertFalse(random.isGoing())
    }
    
    func testCar_Make_Success() {
        let car = Car(with: "")
        XCTAssertNotNil(car)
    }
    
    func testCar_move_forward_Success() {
        let car = Car(with: "jk")
        let random = RandomNumber(value: 5)
        car.moveForward(by: random)
        var result = 0
        car.iterate({ position in result += 1 })
        XCTAssertEqual(result, 1)
    }
    
    func testCar_move_forward_Fail() {
        let car = Car(with: "jk")
        let random = RandomNumber(value: 3)
        car.moveForward(by: random)
        var result = 0
        car.iterate({ position in result += 1 })
        XCTAssertEqual(result, 0)
    }
    
}
