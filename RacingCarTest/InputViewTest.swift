//
//  RacingCarTest.swift
//  RacingCarTest
//
//  Created by 공명진 on 2019/09/10.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingCarTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInputViewCars() {
        let cars = InputView.cars(inputValue: "a,b,c")
        XCTAssert(cars.count == 3)
        XCTAssert(cars[0].carName == "a")
        XCTAssert(cars[1].carName == "b")
        XCTAssert(cars[2].carName == "c")
    }
    
    func testInputViewCount() {
        let count = InputView.count(inputValue: "5")
        XCTAssert(count == 5)
        
        let count2 = InputView.count(inputValue: "")
        XCTAssert(count2 == 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
