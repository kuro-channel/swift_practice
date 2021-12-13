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

// Optional
let optionalText: String? = nil
let optionalText2: String? = "Hello, World"
let optionalInt: Int? = nil
let optionalInt2: Int? = 3

print(optionalText)
print(optionalText2)
print(optionalInt)
print(optionalInt2)

// 以下エラー
//let testInt: Int = nil
//let testString: String = nil

// オプショナルバインディング
let number: Int? = 10

// Optional型の変数を使う
print(number)
if let unwrapped = number {
    print(unwrapped)
}

// ??演算子
let number1: Int? = 10
// Optional型の変数を使う
print(number1)
let unwrappedNumber: Int = number ?? 1
print(unwrappedNumber)

let number2: Int?  = nil
print(number2)

let test: Int = number2 ?? 99
print(test)

// type(:of)
print(type(of: test))
print(type(of: number2))

// tuple

let tuple: (Int, String, Bool) = (123, "TEST", true)

print(tuple.0)
print(tuple.1)
print(tuple.2)

let tuple1: (left: Int, right: String) = (123, "TEST")
print(tuple1.left)
print(tuple1.right)

// dictionary
let a: [String: Int] = ["key1": 1, "key2": 2]

a["key1"]
a["key2"]

