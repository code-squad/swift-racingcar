import Foundation

struct RaceGame {

    var cars: Int
    var status: [Int] = []
    
    init(cars: Int) {
        self.cars = cars
        self.status = [Int](repeating: 0, count: cars)
    }

    mutating func oneStepForward() {
        for _ in 0..<cars {
            let random = arc4random_uniform(10)
            if random > 3 {
                cars[index] += 1
            }
        }
    }
    
    mutating func showCarisRacing(){
        for index in 0..<cars{
            for _ in 0..<status[index]{
                print("-", terminator:"")
            }
            print("")
        }
    }
    
    mutating func playing() {
        for _ in 1...3 {
            oneStepForward()
            showCarisRacing()
            print("")
        }
    }
}

func CountCar(){
    print("자동차 대수")
    let valuereads = readLine()
    let cars = Int(valuereads ?? "0") ?? 0
}

CountCar()
var racingGame = RacingGame()
racingGame.racing()
