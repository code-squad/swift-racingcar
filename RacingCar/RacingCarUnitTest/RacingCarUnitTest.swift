//
//  RacingCarUnitTest.swift
//  RacingCarUnitTest
//
//  Created by temphee.Reid on 11/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingCarUnitTest: XCTestCase {
    var racing : CarRacing!
//    var cars : [Car]?
//    var winnerCars : [Car]?
    let maxDistance = 6

    override func setUp() {
        racing = CarRacing(carNames: ["pobi", "crong", "honux"])
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_RandomMove_returns_true_when_given_number_is_greater_than_4() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("Test a number < 4 =======")
        for givenNumber in 0...3 {
            print("number \(givenNumber)")
            XCTAssertFalse(RandomMove.canMoveForward(with: givenNumber))
        }
        
        print("Test a number >= 4 ======")
        for givenNumber in 4...10 {
            print("number \(givenNumber)")
            XCTAssertTrue(RandomMove.canMoveForward(with: givenNumber))
        }
    }
    
    func test_Car_moves_foward_only_when_tryToMoveForward_returns_true() {
        var car = Car()
        for _ in 1...10 {
            let prev_distance = car.distance
            let moveResult = car.tryToMoveForward()
            if moveResult {
                XCTAssertEqual(car.distance, prev_distance + 1)
            }
            else {
                XCTAssertEqual(car.distance, prev_distance)
            }
        }
    }
    
    func test_Get_MaxDistance() {
        // assigned by value..
        guard var cars = (racing.racingCars) else {
            XCTFail("racing is not inited.")
            return
        }
        
        for _ in 1...maxDistance {
            cars[0].moveForward()
        }
        
        for _ in 1...maxDistance {
            cars[1].moveForward()
        }
        
        cars[2].moveForward()
        
        XCTAssertEqual(racing.getMaxDistance(racedCars: cars), maxDistance)
    }
    
    func test_Get_Winner_Cars() {
        guard var cars = (racing.racingCars) else {
            XCTFail("racing is not inited.")
            return
        }
        
        for _ in 1...maxDistance {
            cars[0].moveForward()
        }
        
        for _ in 1...maxDistance {
            cars[1].moveForward()
        }
        
        cars[2].moveForward()
        
        let winnerCars = [cars[0], cars[1]]
        
        let resultWinnerCars = racing.getWinnerCars(racedCars: cars, maxDistance: maxDistance)
        for (index, car) in  winnerCars.enumerated() {
            XCTAssertEqual(car.name, resultWinnerCars[index].name)
            XCTAssertEqual(car.distance, resultWinnerCars[index].distance)
            XCTAssertEqual(resultWinnerCars[index].distance, maxDistance)
        }
    }
    
    func test_CarRacing_init_safely() {
        var emptyCarRacing = CarRacing(carNames: [])
        emptyCarRacing.runRacing(times: 10)
        
        XCTAssertNil(emptyCarRacing.getWinnerCars())
        
        var oneCarRacing = CarRacing(carNames: ["alone"])
        oneCarRacing.runRacing(times: 10)
        
        let winner = oneCarRacing.getWinnerCars()
        
        XCTAssertNotNil(winner)
        XCTAssertEqual(winner?[0].name, "alone")
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
