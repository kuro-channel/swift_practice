// 条件分岐

// 映画館のチケットの値段を考える
// 15歳以上：1500円
// 15歳未満：1000円
var age = 16
var ticketAmmount = 0

if (age >= 15) {
    ticketAmmount = 1500
} else {
    ticketAmmount = 1000
}

// 映画館のチケット：パート2(if~else if~else)
// 15歳以上：1500円
// 6歳以上15歳未満：1000円
// 6歳未満：500円
age = 7
if age >= 15 {
    ticketAmmount = 1500
} else if age >= 6 {
    ticketAmmount = 1000
} else {
    ticketAmmount = 500
}

// 論理演算子
age = 6
if age >= 6 && age <= 15 {
    ticketAmmount = 1000
} else {
    ticketAmmount = 500
}

// 映画館のチケット：switch文
// 15歳以上：1500円
// 6歳以上15歳未満：1000円
// 6歳未満：500円
age = 5

switch age {
case 15...:
    1500
case 6...14:
    1000
case 0...5:
    500
default:
    0
}

// 変数のスコープについて
if age == 15 {
    let price = 1500
    price
}
