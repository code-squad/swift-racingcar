import Foundation

print("자동차 대수는 몇 대인가요?")
let readValue = readLine()
let carsCount = Int(readValue ?? "0") ?? 0

struct Car {
    var distance = Int()
    
    init() {
        distance = 0
    }
    
    mutating func oneStepForward(){
        let randomValue = arc4random_uniform(10)
        if (randomValue >= 4) {
            distance += 1
        }
    }
    
    mutating func showCarisRacing(){
        for _ in 0...distance{
            print("-", terminator:"")
        }
        print("")
    }
}

struct RacingGame {
    var cars: Array<Int> = []
    
    mutating func initRacing(carsCount: Int){
        for _ in 1...carsCount{
            cars.append(0)
        }
    }
    
    mutating func playing(){
        for _ in 1...3{
            for index in 0..<cars.count{
                var currentCar = cars[index]
                print("** Game Start **")
                currentCar.oneStepForward()
                currentCar.showCarisRacing()
            }
            print("")
        }
    }
}

var game = RacingGame()
game.play()
