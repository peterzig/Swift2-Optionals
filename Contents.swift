//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int? // ? is what defines as optional (may or not may have a value)

lotteryWinnings = 20

if lotteryWinnings != nil{
    
    print(lotteryWinnings!) // ! is unwrapping the value, this is bad

}

lotteryWinnings = 100

if let winnings = lotteryWinnings {
    print(winnings) // if there's a value a new variable is being compared to lotteryWinnings and printed
}

class Car {
    var model: String?

}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

print(vehicle?.model) // it doesn't have value yet

vehicle = Car()
vehicle?.model = "Honda Civic" // ? this is optional, may or not have a value

if let v = vehicle, let m = v.model {
    print(m)    // now it has value "Honda Civic"
}

var cars: [Car]?

cars = [Car]()

if let carArr = cars where carArr.count > 0 {
    // only does when not nil and if more than 0 elements
} else {
    cars?.append(Car())
    print(cars?.count)
}

// Another Example

class Person {
    var _age: Int!
    
    var age: Int { //setter for private variable _age
        if _age == nil {
            _age = 0
        }
        return _age
    }
    
    func setAge(newAge: Int){
        self._age = newAge
    }
    
}

var peter = Person()
print(peter.age)
peter.setAge(20)
print(peter.age)

// Third example

class Dog {
    var species: String
    
    init(newSpecies: String){ //initializer (constructor)
        self.species = newSpecies
    }
}

var odie = Dog(newSpecies: "West Highland Terrier")
print(odie.species) //my dog is an object :O

