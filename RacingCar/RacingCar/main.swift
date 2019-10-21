//
//  main.swift
//  RacingCar
//
//  Created by shshim on 10/21/2019.
//


import Foundation

let gameTotalCount:Int = 3 //총 반복 게임 수
var carTotalCount:Int = 0 //자동차 대수
var gameTicketAry = [Int]()  //다음 게임 티켓 순번 배열

func carCountRead() {
    print("자동차 대수는 몇 대 인가요?")
    let carReadValue = readLine()
    carTotalCount = Int( carReadValue ?? "0") ?? 0
    gameTicketAry = [Int](repeating: 1, count: carTotalCount)  //첫게임 티켓 발급(초기화)
}

func run() {
    print("** Game start **")
    
    for gameIndex in 1...gameTotalCount {  //게임 횟수 만큼 반복
        for carIndex in 0..<carTotalCount{ //자동차 수 만큼 반복
            
            let ticketCount = gameTicketAry[carIndex]
            print( String(repeating:"-", count: ticketCount) ) //각 자동차 게임 티켓 수 만큼 출력
            
            //게임 티켓 수가 현재 게임 수와 같고 랜덤값이 4 이상일 경우, 다음 게임 참전 티켓 발급
            if( ticketCount == gameIndex && Int.random(in: 0 ... 9) >= 4){
                gameTicketAry[carIndex] = ticketCount + 1
            }
        }
        print("")
    }
    print("** Game end **")
}


func continueAsk() -> Bool{
    print("게임을 계속 하시겠습니까?(y/n)")
    let readValue = readLine()
    let gameContinue = String( readValue ?? "")
    
    if gameContinue == "y" {
        return true
    } else if gameContinue == "n"  {
        print("게임이 종료 됐습니다.")
        return false
    } else {
        print("잘못 입력하셨습니다. 게임을 종료합니다.")
        return false
    }
}

func main(){
    
    while true {
        carCountRead()
        run()
        if continueAsk() {
            continue
        } else {
            break
        }
    }
    
}


main()
