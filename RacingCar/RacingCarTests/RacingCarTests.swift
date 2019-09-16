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
    
    func testStartRace() {
        let carA = Car(name: "A")
        let carB = Car(name: "B")
        let cars = [carA, carB]
        let numberOfRounds = 3
        var game = RacingGame(cars: cars, numberOfRounds: numberOfRounds)
        game.startRace()
        XCTAssertEqual(game.rounds.count, numberOfRounds)
        XCTAssertEqual(game.rounds.first!.records.count, cars.count)
    }
    
    func testRound() {
        let carA = Car(name: "A")
        let carB = Car(name: "B")
        let cars = [carA, carB]
        var round = Round(cars: cars, records: [])
        round.start()
        XCTAssertEqual(round.cars.count, cars.count)
        XCTAssertEqual(round.records.count, cars.count)
    }
    
}
