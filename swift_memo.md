###随時更新中

## 変数と定数の定義
- 変数
  - 文末のセミコロン（;）はいらない
  - 変数に対して明示的に型を指定したい場合はコロン（:）で指定

```swift
// var 変数名 : 型 = 値
var str = "Hello, playground"
```

- 定数
  - 再代入不可
  - var / let どちらをつかうべきか
  - 値がミュータブル：var / イミュータブル : let
  - 基本は「let」

```swift
// let 変数名 : 型 = 値
var x = "Hello, playground"
y = 20 //エラーになる：Cannot assign to value: 'y' is a 'let' constant
```

- 変数名のルール
  - 1. 先頭が数字の変数名はNG
  - 2. 予約語 ※詳しくは[[公式ドキュメント: https://www.swift.org/]]
  - 3. 同じ変数名は使用不可（再宣言不可）※同一スコープ内

```swift
let 100xy = 100 // 先頭が数字の変数名はNG
let var = 10 // 予約語はNG
```

### CamelCase or Snake Case
- Swiftでは「Camel Case推奨」
  - ※プロジェクトによる

```swift
let priceOfApple  = 100 // 推奨
let price_of_apple = 100 // 非推奨
````

## if文
- 条件式の()は省略可 書かないのが一般的
```swift
let age = 16
var ticketAmmount = 0

if age >= 15 {
  ticketAmmount = 1500
} else if age >= 6{
  ticketAmmount = 1000
} else {
  ticketAmmount = 500
}
```

## データ型
