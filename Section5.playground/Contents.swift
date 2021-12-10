import UIKit

var str = "Hello, playground"

// for文
//for index in 1...10 {
//    print(index)
//}

// 1から10までの数字を全て足し合わせた数
var total = 0
for index in 1...10 {
    total += index
}
print(total)

// break, continueでループ処理を制御
for index in 1...10 {
    if index == 5 {
        print(index) 
        break
    }
}
