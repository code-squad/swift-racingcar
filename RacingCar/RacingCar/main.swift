//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

//기능 요구사항
//초간단 자동차 경주 게임을 구현한다.
//사용자는 몇 대의 자동차로 이동을 할 것인지를 입력한다.
//n대의 자동차는 전진 또는 멈출 수 있다.
//전진하는 조건은 0에서 9 사이에서 random 값을 구한 후 random 값이 4이상일 경우이다.
//자동차의 상태를 화면에 출력한다. 어느 시점에 출력할 것인지에 대한 제약은 없다.
//위의 과정을 3회 반복해서 결과를 출력한다.

//프로그래밍 요구사항
//메소드가 너무 많은 일을 하지 않도록 분리하기 위해 노력해 본다.
//스위프트다운 코딩 표기법을 지키서 프로그래밍한다.

struct RacingGame {
    var carList:[Car] = [Car]()
    
    init(count:Int) {
        makeCarList(count: count)
    }
    
    mutating func makeCarList(count:Int){
        for _ in 0 ..< count {
            carList.append(Car())
        }
    }
    
    mutating func play(playCount:Int) {
        for _ in 1...playCount {
            for index in 0 ..< carList.count {
                var currentCar = carList[index]
                currentCar.start()
                currentCar.printDistance()
            }
            
            print("")
        }
    }
}

struct Car {
    var distance:Int
    
    init() {
        distance = 0
    }
    
    mutating func start() {
        let randomValue = Int.random(in: 0 ... 9)
        if(randomValue >= 4) {
            distance += 1
        }
    }
    
    func printDistance() {
        for _ in 0...distance {
            print("-",terminator:"")
        }
        print()
    }
}

print("자동차 대수는 몇 대 인가요?")
let stringCarCount = readLine() ?? "0"
let numberCarCount = Int(stringCarCount) ?? 0

var game = RacingGame(count: numberCarCount)
game.play(playCount:3)
