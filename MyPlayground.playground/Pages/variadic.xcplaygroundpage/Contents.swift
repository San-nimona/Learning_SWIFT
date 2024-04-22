//: [Previous](@previous)

func ArithmeticMean(_ numbers: Double...) -> Double {
    var result: Double = 0
    for num in numbers{
        result += Double(num)
    }
    return result/Double(numbers.count)
}
print(ArithmeticMean(2, 4, 3, 1))

func SwapInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}
var a = 2
var b = 3
(SwapInts(&a, &b))
print("\(a) and \(b)")

let multiply = {(_ a: Int, _ b: Int) -> Int in
        return a * b
}
multiply(5,3)

let join: (String, String) -> String = {
    $0 + $1
}
//: [Next](@next)
