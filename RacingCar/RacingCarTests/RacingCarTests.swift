//
//  RacingCarTests.swift
//  RacingCarTests
//
//  Created by junwoo on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingCarTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAccumulatedDistance() {
        var game = RacingGame(numberOfCars: 2)
        game.races = [[1,2], [1,3]]
        let raceOfLastRound = game.races.last!
        let newDistanceFor1stCar: Int = 3
        let newDistanceFor2ndCar: Int = 5
        let accumulatedFor1stCar = game.accumulatedDistancePerCar(carIndex: 0, distance: newDistanceFor1stCar)
        let accumulatedFor2ndCar = game.accumulatedDistancePerCar(carIndex: 1, distance: newDistanceFor2ndCar)
        XCTAssertEqual(accumulatedFor1stCar, raceOfLastRound[0] + newDistanceFor1stCar)
        XCTAssertEqual(accumulatedFor2ndCar, raceOfLastRound[1] + newDistanceFor2ndCar)
    }
    
    func testRace() {
        let numberOfCars = 3
        let numberOfRaces = 2
        var game = RacingGame(numberOfCars: numberOfCars)
        for _ in 1...numberOfRaces {
            game.race()
        }
        XCTAssertEqual(game.races.count, numberOfRaces)
        XCTAssertEqual(game.races.first!.count, numberOfCars)
        XCTAssertEqual(game.races.last!.count, numberOfCars)
    }
}
