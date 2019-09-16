//
/******************************************************************************
 * File Name        : RacingCarTest.swift
 * Description      : RacingCar
 *******************************************************************************
 * Copyright (c) 2002-2019 KineMaster Corp. All rights reserved.
 * https://www.kinemastercorp.com/
 *
 * THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
 * PURPOSE.
 ******************************************************************************/

import XCTest

class RacingCarTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func test_InputHandler_canUseInputStr() {
        var testInput = ""
        XCTAssertFalse(InputHandler.canUseInputStr(testInput))
        testInput = "a,b,c"
        XCTAssertTrue(InputHandler.canUseInputStr(testInput))
    }
    
    func test_InputHandler_seperatePlayerName() {
        let testInput = "aa,bb,cc"
        let resultNames = InputHandler.seperatePlayerName(names: testInput)
        XCTAssert(resultNames == ["aa", "bb", "cc"])
    }
    
    
    
    func test_RacingGame_init() {
        let game = RacingGame(numberOfCar: 3)
        XCTAssert(game.cars.count == 3)
    }
    
    func test_RacingGame_initByName() {
        let names: [String] = ["aaa", "bbb", "ccc"]
        let game = RacingGame(carNames: names)
        XCTAssert(game.cars.count == 3)
        XCTAssert(game.cars[0].name == "aaa")
        XCTAssert(game.cars[1].name == "bbb")
        XCTAssert(game.cars[2].name == "ccc")
    }
    
    func test_RacingGame_needToMove() {
        let game = RacingGame(numberOfCar: 3)
        let moveOrNot = RacingGame.MoveOrNot
        XCTAssert(game.needToMove(random: moveOrNot) == true)
        XCTAssert(game.needToMove(random: moveOrNot-1) == false)
        XCTAssert(game.needToMove(random: moveOrNot+1) == true)
    }
    
    func test_RacingGame_playGame() {
        let game = RacingGame(numberOfCar: 3)
        let playCount = 5
        game.playGame(times: playCount)
        XCTAssert(game.cars.first?.stepHistory.count == playCount)
    }
    
    func test_RacingGame_run() {
        let game = RacingGame(numberOfCar: 3)
        game.run()
        XCTAssert(game.cars.first?.stepHistory.count == 3)
    }
    
    func test_RacingGame_winner() {
        let game = RacingGame(carNames: ["a", "b"])
        game.cars[0].playOneRound(canMove: true)
        game.cars[1].playOneRound(canMove: false)
        let winners = game.winners()
        XCTAssert(winners.count == 1)
        XCTAssert(winners[0].name == "a")
    }

    
    
    func test_Car_init_and_playOneRound() {
        let car = Car(initStep: 2)
        var car2 = Car(initStep: 1)
        car2.playOneRound(canMove: true)
        XCTAssert(car == car2)
    }

    func test_Car_stepHistory() {
        var car = Car(initStep: 1)
        car.playOneRound(canMove: true)
        XCTAssert(car.stepHistory.count == 1)
    }
    
    

    func test_Output_detectRoundCount() {
        var game = RacingGame(numberOfCar: 3)
        let playCount = 5
        game.playGame(times: playCount)
        XCTAssert(OutputView.detectRoundCount(car: game.cars.first) == playCount)
    }
    
}
