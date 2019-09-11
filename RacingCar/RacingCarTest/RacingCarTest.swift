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

    //RacingGame
    //init(numberOfCar: Int) {
    //mutating func playOneRound() {
    //static let MoveOrNot = 4
    //func needToMove(random: Int) -> Bool {
    //mutating func playGame(times: Int) {
    //mutating func run() {
    
    func test_RacingGame_init() {
        let game = RacingGame(numberOfCar: 3)
        XCTAssert(game.cars.count == 3)
    }
    
    func test_RacingGame_needToMove() {
        let game = RacingGame(numberOfCar: 3)
        let moveOrNot = RacingGame.MoveOrNot
        XCTAssert(game.needToMove(random: moveOrNot) == true)
        XCTAssert(game.needToMove(random: moveOrNot-1) == false)
        XCTAssert(game.needToMove(random: moveOrNot+1) == true)
    }
    
    func test_RacingGame_playGame() {
        var game = RacingGame(numberOfCar: 3)
        let playCount = 5
        game.playGame(times: playCount)
        XCTAssert(game.cars.first?.stepHistory.count == playCount)
    }
    
    func test_RacingGame_run() {
        var game = RacingGame(numberOfCar: 3)
        game.run()
        XCTAssert(game.cars.first?.stepHistory.count == 3)
    }


    //Car
    //init(step: Int = 1) {
    //mutating func playOneRound(canMove: Bool) {
    //func printStep(_ step: Int) -> String {
    //func printStepHistory(at: Int) -> String {
    func test_Car_init() {
        let car = Car(initStep: 2)
        XCTAssert(car.step == 2)
    }
    func test_Car_playOneRound() {
        var car = Car(initStep: 1)
        car.playOneRound(canMove: true)
        XCTAssert(car.step == 2)
    }
    func test_Car_stepHistory() {
        var car = Car(initStep: 1)
        car.playOneRound(canMove: true)
        XCTAssert(car.stepHistory.count == 1)
    }
    
    //output
    //static func detectRoundCount(car: Car?) -> Int
    //static func printOneRound(at index: Int, cars: [Car])
    func test_Output_detectRoundCount() {
        var game = RacingGame(numberOfCar: 3)
        let playCount = 5
        game.playGame(times: playCount)
        XCTAssert(OutputView.detectRoundCount(car: game.cars.first) == playCount)
    }
    
}
