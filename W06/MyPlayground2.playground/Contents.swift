import UIKit

var str = "Hello, playground"

//Dictionary 타입 변수
//Dictionary에서 순서는 의미없음
var numberForName: [String: Int] = ["1학년": 40, "2학년": 35, "3학년": 35]

print(numberForName["1학년"]!)

numberForName["2학년"] = 50 //수정
numberForName["4학년"] = 40 //추가
numberForName.removeValue(forKey: "3학년") //삭제

print(numberForName)



print("----------------------------------------")



//Set 타입 변수
var Line6: Set<String> = ["봉화산", "화랑대", "태릉입구", "석계"]
var Line7: Set<String> = ["하계", "공릉", "태릉입구", "먹골"]

print("\(Line6.count), \(Line6.isEmpty)")
Line6.insert("돌곶이") //추가
Line6.remove("봉화산") //삭제

let intersect = Line6.intersection(Line7); print(intersect) //교집합 구하기
let union = Line6.union(Line7); print(union) //합집합 구하기
let subtract = Line6.subtracting(Line7); print(subtract) //Line6에서 Line7과 겹치는 것 빼기

print(Line6.contains("화랑대")) //원소 존재여부
print(Line6.isDisjoint(with: Line7)) //같은 원소가 없는지?
print(Line6.isSubset(of: union)) //부분집합?
print(union.isSuperset(of: intersect)) //전체집합?



print("----------------------------------------")


//Enumeration(열거형) 타입 변수
enum School {
    case elementary
    case middle
    case high
    case university
}

var highestEducationLevel: School = School.university
var lowestEducationLevel: School = .elementary

print(highestEducationLevel)



print("----------------------------------------")


enum School2: String{
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case university = "대학교"
}

let highestEducationLevel2: School2 = .university

print("최종 학력: \(highestEducationLevel2.rawValue) 졸업")
print(School2.elementary.rawValue)



print("----------------------------------------")


let intValue = 8
switch intValue {
case 0:
    print("value == zero")
case 1 ... 10:
    print("value == 1~10")
    fallthrough
case Int.min ..< 0, 101 ..< Int.max :
    print("Value < 0 or Value > 100 ")
default:
    print("10 < Value <= 100")
}



print("----------------------------------------")


func addTwoNumbers (first: Int, second: Int) -> Int{
    return first + second
}

print(addTwoNumbers(first: 12, second: 3))



print("----------------------------------------")



func addVAT(source: Double) -> Double {
    return source * 1.1
}

var additional : (Double) -> Double
additional = addVAT

let todayTransaction = 100.0
let todayPrice = additional(todayTransaction)
print(todayPrice)

func finalPrice(source: Double, process:(Double)->Double) -> Double{
    let price = process(source)
    return price
}
let priceTomorrow = finalPrice(source: 200.0, process: addVAT)
print(priceTomorrow)



print("----------------------------------------")


//함수를 반환하는 함수
func makeAdder(x:Int) -> (Int)->Int {
    func adder(a: Int)->Int{
        return a+x
    }
    return adder
}
let add5 = makeAdder(x: 5)
let add10 = makeAdder(x: 10)

print(add5(2))
print(add10(2))



print("----------------------------------------")


//optional 변수
var myName: String = "Kang"
print(myName)
// myName = nil ---> 오류

//변수 초기화하지 않으면 nill값 들어가있음
var yourName: String? = "Kim"
print(yourName)
yourName = nil
print(yourName)


