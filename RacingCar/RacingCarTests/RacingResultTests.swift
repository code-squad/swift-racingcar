//
//  RacingResultTests.swift
//  RacingCarTests
//
//  Created by sungchan.you on 2019/09/17.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class RacingResultTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    lazy var noWinner: RacingResult = {
        return RacingResult(roundResults: [RoundResult(racingCars:[])])
    }()
    
    lazy var exorcistWin: RacingResult = {
        let cars = [RacingCar(name: "Zombie", distance: 3),
                    RacingCar(name: "Ghost", distance: 2),
                    RacingCar(name: "Exorcist", distance: 5)]
        return RacingResult(roundResults: [RoundResult(racingCars:cars)])
    }()
    
    lazy var exorcistLose: RacingResult = {
        let cars = [RacingCar(name: "Zombie", distance: 3),
                    RacingCar(name: "Ghost", distance: 3),
                    RacingCar(name: "Exorcist", distance: 1)]
        return RacingResult(roundResults: [RoundResult(racingCars:cars)])
    }()
    
    lazy var allWinners: RacingResult = {
        let cars = [RacingCar(name: "Zombie", distance: 10),
                    RacingCar(name: "Ghost", distance: 10),
                    RacingCar(name: "Exorcist", distance: 10)]
        return RacingResult(roundResults: [RoundResult(racingCars:cars)])
    }()
    
    lazy var ghostWin: RacingResult = {
        let round1 = RoundResult(racingCars: [RacingCar(name: "Zombie", distance: 1),
                                              RacingCar(name: "Ghost", distance: 1),
                                              RacingCar(name: "Exorcist", distance: 0)])
        
        let round2 = RoundResult(racingCars: [RacingCar(name: "Zombie", distance: 2),
                                              RacingCar(name: "Ghost", distance: 2),
                                              RacingCar(name: "Exorcist", distance: 1)])
        
        let round3 = RoundResult(racingCars: [RacingCar(name: "Zombie", distance: 2),
                                              RacingCar(name: "Ghost", distance: 3),
                                              RacingCar(name: "Exorcist", distance: 2)])
        
        return RacingResult(roundResults: [round1, round2, round3])
    }()
    

    func test_no_winner() {
        XCTAssertNil(noWinner.winners())
    }
    
    func test_exist_one_winner() {
        let winner = exorcistWin.winners()
        XCTAssertTrue(winner?.count == 1)
        XCTAssertTrue(winner?.contains("Exorcist") ?? false)
    }
    
    func test_exist_two_winners() {
        let winners = exorcistLose.winners()
        XCTAssertTrue(winners?.count == 2)
        XCTAssertTrue(winners?.contains("Zombie") ?? false)
        XCTAssertTrue(winners?.contains("Ghost") ?? false)
        XCTAssertFalse(winners?.contains("Exorcist") ?? false)
    }
    
    func test_all_winners() {
        let winners = allWinners.winners()
        XCTAssertTrue(winners?.count == 3)

    }
    
    func test_three_round_one_winner() {
        let winner = ghostWin.winners()
        XCTAssertTrue(winner?.count == 1)
        XCTAssertTrue(winner?.contains("Ghost") ?? false)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
