//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    var numOfcar = 0
    var go : Array<Int> = []
    init(num:Int) {
        numOfcar = num
        for _ in 0...num-1{
            go.append(0)
        }
    }
    mutating func run() {
        for _ in 1...3 {
            for i in 0...numOfcar-1 {
                let random = Int.random(in: 0...9)
                if random>3{
                    go[i] += 1
                }
            }
        }
    }
    func printcar() {
        for num in go{
            if num > 0 {
                for _ in 0...num-1 {
                    print("-", terminator: "")
                }
            }
            print("")
        }
    }
}
struct InputView {
    func input() -> Int {
        print("자동차 대수는 몇 대 인가요?")
        let number = Int(readLine() ?? "0") ?? 0
        return number
    }
}
var inputView = InputView()
var game = RacingGame(num:inputView.input())
game.run()
game.printcar()
