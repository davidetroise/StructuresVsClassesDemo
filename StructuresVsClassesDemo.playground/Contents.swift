struct Vehicle {
    let numberOfWheels: Int
    var isEngineOn: Bool
    
    init(numberOfWheels: Int, isEngineOn: Bool = false) {
        self.numberOfWheels = numberOfWheels
        self.isEngineOn = isEngineOn
    }
    
    func printEngineStatus() {
        if isEngineOn {
            print("Engine is ON")
        } else {
            print("Engine is OFF")
        }
    }
    
    mutating func startEngine() {
        if isEngineOn == false {
            isEngineOn = true
        }
    }
    
    mutating func stopEngine() {
        if isEngineOn == true {
            isEngineOn = false
        }
    }
}

var car = Vehicle(numberOfWheels: 4)
let anotherCar = car

car.printEngineStatus()
car.startEngine()
car.printEngineStatus()

anotherCar.printEngineStatus()

class Animal {
    var commonName: String
    var isAdult: Bool
    
    init(commonName: String, isAdult: Bool = false) {
        self.commonName = commonName
        self.isAdult = isAdult
    }
    
    func printLifeStatus() {
        if isAdult {
            print("\(commonName) is an ADULT")
        } else {
            print("\(commonName) is a PUPPY")
        }
    }
    
    func growUp() {
        if isAdult == false {
            isAdult = true
        }
    }
}

class Cat: Animal {
    init() {
        super.init(commonName: "Cat")
    }
}

let cat = Cat()
let anotherCat = cat

cat.printLifeStatus()
cat.growUp()
cat.printLifeStatus()

anotherCat.printLifeStatus()
