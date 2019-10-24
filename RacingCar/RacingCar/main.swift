//
//  main.swift
//  RacingCar
//
//  Created by shshim on 10/21/2019.
//  Update by shshim on 10/24/2019
//


import Foundation

struct Car {
    private var moveCount = 0

    mutating func move() {
        moveCount += 1
    }

    func lastMoveCount() -> Int {
        return moveCount;
    }
}

struct Game {
    private var gameCount = 0
    private var carArray = [Car]()

    init(gameCount: Int, carCount: Int) {
        self.gameCount = gameCount
        let car = Car()
        self.carArray = [Car](repeating:car, count:carCount)
    }

    mutating func runGame() {
        for gameIndex in 0..<gameCount {
          for carIndex in 0..<carArray.count{ 
            let isCarGo = decideCarGoStop(gameIndex: gameIndex, carIndex: carIndex)
            if(isCarGo){ 
              carArray[carIndex].move()
            }
          }
        }
    }

    func showResult(){
      for gameIndex in 1...gameCount {  //게임 횟수 만큼 반복
        for car in carArray{
          let moveString  = makeMoveString(gameIndex: gameIndex, lastMoveCount: car.lastMoveCount())
          OutputView.printMove(moveString: moveString)
        }
        print("")
      }
    }

    private func decideCarGoStop(gameIndex: Int, carIndex: Int) -> Bool{
      let lastMoveCount = carArray[carIndex].lastMoveCount()
      if( lastMoveCount == 0){ //게임 참가기록이 없으면 게임 참가 True
        return true;
      }
      //기존 게임수와 현재 게임 수가 같고 랜덤값이 4 이상일 경우, 다음 게임 True
      if( lastMoveCount == gameIndex && Int.random(in: 0 ... 9) >= 4){
        return true;
      }
      return false;
    }

    func makeMoveString(gameIndex: Int, lastMoveCount: Int) -> String {
      let moveCount = lastMoveCount < gameIndex ?  lastMoveCount  : gameIndex
      let moveString = String(repeating:"-", count: moveCount)
      return moveString
    }
}

struct InputView {
    static private func readData(question: String) -> String {
        print(question)
        return readLine() ?? ""
    }
    
    static func readCarCount() -> Int {
        let carCount = readData(question: "자동차 대수는 몇 대 인가요?")
        return Int(carCount) ?? 0
    }

    static func readAskContinue() -> Bool {
        let readValue = readData(question: "게임을 계속 하시겠습니까?(y/other)")
        let isContinueGame = readValue=="y" ? true : false 
        return isContinueGame
    }
}

struct OutputView {
    static func printMove(moveString: String){
      print(moveString) 
    }

    static func printGameEnd() {
      print("게임이 종료 됐습니다.")
    }
}

func checkContinueGame() -> Bool {
  let isContinueGame = InputView.readAskContinue()
  if(!isContinueGame){
    OutputView.printGameEnd()
  }
  return isContinueGame
}

func main(){
    let gameCount = 3
    while true {
      let carCount = InputView.readCarCount()
      
      var game = Game(gameCount: gameCount, carCount: carCount)      
      game.runGame()
      game.showResult()

      if(checkContinueGame()){
        continue
      } else {
        break
      }
    }
}


main()