import UIKit

var str = "Hello, playground"

// Int型
let x: Int = 10

// Double
let y: Double = 10.05

let array: [Int] = [1,2,3]
let strArray: [String] = ["テスト1", "テスト2", "テスト3"]

var testArray: [Int] = [1,2,3]
testArray[0] = 9
print(testArray[0])

testArray.append(10)
print(testArray)

testArray.remove(at: 3)
print(testArray)
