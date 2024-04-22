//: [Previous](@previous)

func PrintAndCount(_ string: String) -> Int {
    print(string)
    let num = string.count
    return num
}
func PrintWithoutCount(_ string: String){
    let _ = PrintAndCount(string)
}
PrintAndCount("hey, brian")
PrintWithoutCount("hey, brian")

func minMax(array: [Int]) -> (min: Int, max: Int)?{
    var currentMin = array[0]
    var currentMax = array[0]
    for num in array[1..<array.count]{
        if num > currentMax{
            currentMax = num
        }
        if num < currentMin{
            currentMin = num
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array: [2, 3, 54, 23, 12, 19, 3, 1, 0, 2, 32]){
    print(bounds)
}

//: [Next](@next)
