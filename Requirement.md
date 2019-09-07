​     

### 프로그래밍 요구사항

    메소드가 너무 많은 일을 하지 않도록 분리하기 위해 노력해 본다.
    규칙 1: 한 메서드에 오직 한 단계의 들여쓰기(indent)만 한다.
        모든 메소드는 최대 10라인을 넘지 않도록 구현한다.
    규칙 2: if 구문에 else 예약어를 쓰지 않는다.
    규칙 3: 모든 로직에 단위 테스트를 구현한다.
        단, 입출력을 위한 readLine(), print() 로직은 제외
        무엇을 테스트해야 하는가 고민해야 한다.
    스위프트 API 디자인 가이드라인을 지키서 작성한다.
    스위프트 API 설계 가이드라인

#### 힌트

    규칙 1: 한 메서드에 오직 한 단계의 들여쓰기(indent)만 한다.
        indent가 2이상인 메소드의 경우 메소드를 분리하면 indent를 줄일 수 있다.
    
    규칙 2: if구문 else 예약어를 쓰지 않는다.
        다음 코드와 같이 guard-else 구문에서 return 문을 사용해도 된다.
```
func add2(text : String?) -> Int {
    guard text == nil || (text?.isEmpty ?? false) else {
        return 0
    }
    
    return Int(text!) ?? 0
}
```
    자동차 이름을 쉼표(,)를 기준으로 분리하려면 String 객체의 split(seperator:) 메소드를 활용한다.
    
    전체적인 실행을 위한 main 코드는 다음과 같이 만들수 있다.
```
func main() {
    let carCount = InputView.readNumberOfCar()
    let game = RacingGame(numberOfCar: carCount)
    game.run()
    OutputView.printGame(game)
}

main()
```


