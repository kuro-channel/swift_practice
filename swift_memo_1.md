### Swift基礎1
- 掲載内容
  - 変数と定数の定義
  - 条件分岐
  - ループ処理
  - 型（Type）

### 【参考文献】  
[デベロッパウェブサイト（Apple）](https://developer.apple.com/jp/swift/)  
[プログラミング言語Swift公式ガイド（Apple）](https://docs.swift.org/swift-book/)  
[API Design Guidelines（Apple）](https://www.swift.org/documentation/api-design-guidelines/)  
[Swiftの始め方](https://swift.codelly.dev/)  

## 変数と定数の定義
- 変数
  - var で定義
  - 文末のセミコロン（;）はいらない
  - 変数に対して**明示的に型を指定したい場合**はコロン（:）で指定
  - **プロジェクト開発では、型を指定するほうが好ましい**
```swift
// var 変数名 : 型 = 値
var str: String = "Hello, playground"
```

- 定数
  - let で定義
  - 再代入不可
```swift
// let 変数名 : 型 = 値
let y: Int = 10
y = 20 //エラーになる：Cannot assign to value: 'y' is a 'let' constant
```
-var / let どちらをつかうべきか
  - 値がミュータブル：var / イミュータブル : let
  -  **基本は「let」**

- 変数名のルール
  - 1. 先頭が数字の変数名はNG
  - 2. 予約語 ※詳しくは[公式ドキュメント](https://www.swift.org/)
  - 3. 同じ変数名は使用不可（再宣言不可）※同一スコープ内
```swift
let 100xy = 100 // 先頭が数字の変数名はNG
let var = 10 // 予約語はNG
```
### CamelCase or Snake Case
- Swiftでは「Camel Case推奨」
  - ※プロジェクトによる
```swift
let priceOfApple: Int  = 100 // 推奨
let price_of_apple: Int = 100 // 非推奨
```
## 条件分岐
- 条件式の()は省略可 書かないのが一般的
```swift
let age: Int = 16
var ticketAmmount: Int = 0

if age >= 15 {
  ticketAmmount = 1500
} else if age >= 6{
  ticketAmmount = 1000
} else {
  ticketAmmount = 500
}
```

- switch文, Range指定
[Range](https://developer.apple.com/documentation/swift/range)
 参考：[Control Flow](https://rusutikaa.github.io/docs/docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
```swift
let age: Int = 12
switch age {
case 15...: // 15歳以上
    print("15歳以上")
case 6...14: // 6歳以上15歳未満
    print("6歳以上15歳未満")
case 0...5: // 6歳未満
    print("6歳未満")
default:
    print("")
}
// Prints "6歳以上15歳未満"
```

## ループ処理
- for文
```swift
for index in 1...10 {
    print(index) // コンソールに出力
}

// 1から10までの数字を全て足してコンソール出力
var total: Int = 0
for index in 1...10 {
    total += index
}
print(total) // 55
```

- break, continue : PHPと一緒
  - break: ループ処理を終了
  - continue: 次のループ処理へスキップ

## 型（Type）
[Swift公式:)
 
**Int : 整数型**
```swift
let x: Int = 10 // Int = Integer
```
**Bouble（浮動小数点型：10の308乗）/ Float（浮動小数点型：10の38乗）**
```swift
let y: Double = 10.05
```
**String : 文字型**
```swift
let str: String = "Hello, World!" // 文字列：ダブルクオーテーション
```
**Bool : 真偽値**
```swift
let flg: Bool = false // or true
```
### 型の集合
**Array：配列型**
※ 型が違う値を同じ配列型で扱うことはできない
```swift
let array: [Int] = [1,2,3]
print(array[0]) // 1

let strArray: [String] = ["テスト1", "テスト2", "テスト3"]
let testArray: [Int] = [1, "テスト1"] // エラー：型が同じものを要素として格納すること
```
```swift
// インデックスを指定して、値を変更する（配列が変更可能な場合）
var testArray: [Int] = [1,2,3]
testArray[0] = 9
print(testArray[0]) // 9

// 配列に要素追加
testArray.append(10) // 最後尾に値追加
print(testArray) // [9,2,3,10]

// 配列から要素削除
testArray.remove(at: 3) // at: 3 → 3番目のindexの要素を削除する
print(testArray) // [9,2,3]
```

### nilとオプショナル
[Optional](https://developer.apple.com/documentation/swift/optional)

- 「値が存在がするかしないか」明示的にする場合に**Optional型**を使用する
  - データ型の直後に「?」をつける！
  - Optional型は、ほかのデータ型と異なり、**空の値（値がない）状態を保持できる**

**【重要】**
「Optional型」のみ「nil」の状態が許容できる
 →「非Optional型」は「nil」を許容しない

```swift
let optionalText: String? = nil
let optionalText2: String? = "Hello, World!!"
let optionalInt: Int? = nil
let optionalInt2: Int? = 3

// 以下はエラーとなる
let testInt: Int = nil // 'nil' cannot Initialize specifed type 'Int' Add '?' to form the optional type "int"?
let testString: String = nil // 'nil' cannot Initialize specifed type 'String' Add '?' to form the optional type "String"?
```

- Optional型は、各データ型をラッピングする=想定外のnilを防ぐ、安全なアプリケーションができる
  - Int -> Int?：ラップする 「データ型をOptional型にラップする」
  - Int? -> Int：アンラップする 「Optional型をデータ型にアンラップする」
  - Optional型に格納される変数の値を使う場合は、以下の方法でアンラップする必要がある

#### オプショナルバインディング
- if-let文を使ってOptional型の変数から値を取り出す
```swift
let number: Int? = 10

print(number) // Optional(10)

if let unwrappedNumber = number {
    print(unwrappedNumber) // 10 :
}
```

#### ??演算子
- 値が「nil」の場合にデフォルト値を設定する方法
  - ??演算子を使用する。「nil」の場合に特定の値として処理をさせたいケースに利用。
```swift
let number: Int? = 10
let number2: Int? = nil

print(number) // Optional(10)
print(number2) // nil

let unwrappedNumber = number ?? 99
let unwrappedNumber2 = number2 ?? 99

print(unwrappedNumber) // 10
print(unwrappedNumber2) // 99  nilだった場合はデフォルト値を設定

```

### タプル（tuple）
[tuple](https://docs.swift.org/swift-book/ReferenceManual/Types.html#grammar_tuple-type)
- **順序付けされた**値の集合体, **異なる型の値**をひとつの変数、または定数で扱えるようになる
  - 値の追加、削除、また繰り返し処理などはできない
  - 配列の場合は複数の型をまとめることができないので、異なる型をひとまとめで使いたい時などに便利
  - 各要素にラベルをつけることも可能
```swift
let tpl: (Int, String, Bool) = (123, "TEST", true)

// index指定で値取得
print(tpl.0) // 123
print(tpl.1) // TEST
print(tpl.2) // true

// 各要素にラベルをつける
let tpl2: (left: Int, right: String) = (123, "TEST")

// ラベル指定で値取得
print(tpl2.left) // 123
print(tpl2.right) // TEST

```

### 辞書型（dictionary）
[dictionary](https://developer.apple.com/documentation/swift/dictionary)
- Dictionary<Key, Value>型：キーと値のペアを持つ
  - **順序を持たない**コレクション
  - Dictionary内では、"Key"は一意（ユニーク）：キーは辞書内でその値の識別子として機能
```swift
// let dictionay: Dictionary<Keyの型, Valueの型> = ["キー名": 値]
let a : [String: Int] = ["key": 1, "key2": 2]
```

### 型推論
[type(of:)](https://developer.apple.com/documentation/swift/2885064-type)
- type(of:)を使用して、変数の型を確認できる

```swift
let number: Int = 10
let number2: Int= nil

print(type(of: number)) // Int
print(type(of: number2)) // Optional<Int>
```
