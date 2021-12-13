import UIKit

var str = "Hello, playground"

// 関数の定義

func sayHello() {
    print("Hello, World!")
}

func add1(x: Int, y: Int) {
    print(x + y)
}

func add10(x: Int = 0) {
    print(x + 10)
}

func sum(x: Int, y: Int) -> Int{
    return x + y
}


sayHello()
add1(x: 1, y: 10)
add10()
print(sum(x: 10, y: 20))


