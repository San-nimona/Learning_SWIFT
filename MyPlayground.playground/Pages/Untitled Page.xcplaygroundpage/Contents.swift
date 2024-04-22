func sayHello(){
    print("Hello Brayo")
}
sayHello()

func BuildMessageFor(_ name: String = "Customer", _ count: Int = 0) {
    print("Hello \(name), proceed to counter number \(count)")
}

BuildMessageFor("u", 3)

func greet(_ name: String = "You") -> String {
    return "Hey \(name)"
}
greet()

func greetAgain(_ person: String, _ alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "Hello again \(person)"
    }
    else{
        return greet(person)
    }
}
greetAgain("Brian", true)
