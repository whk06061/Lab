import UIKit

var str = "Hello, playground"

//struct은 값을 복사해 독립적인 기억장소를 가짐

struct BasicInfo {
    var name: String
    var age: Int
}

var hong: BasicInfo = BasicInfo(name: "Hong", age: 24)
hong.age = 26

var lee: BasicInfo = hong //복사 할당(주소값이 서로 다름)

print("Hong's age: \(hong.age)")
print("Lee's age: \(lee.age)")

lee.age = 32

print("Hong's age: \(hong.age)")
print("Lee's age: \(lee.age) \n")

print("---------------------------------------\n")


//class는 기억장소를 참조해 연관된 기억장소를 가짐

class Person{
    var name: String
    var age: Int
    init(name:String, age:Int) {
        self.name = name; self.age = age
    }
}
var kang: Person = Person(name: "Kang", age: 27)
kang.age = 28

var park: Person = kang //같은 주소를 참조하게 됨(주소값 복사됨)

print("Kang's age: \(kang.age)")
print("Park's age: \(park.age)")

park.age = 33

print("Kang's age: \(kang.age)")
print("Park's age: \(park.age)")

print("---------------------------------------\n")


