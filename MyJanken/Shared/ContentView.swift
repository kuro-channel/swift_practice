//
//  ContentView.swift
//  Shared
//
//  Created by 黒岩卓誠 on 2022/01/23.
//

import SwiftUI

struct ContentView: View {
    // じゃんけんの種類を数字で管理する変数
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            // スペース追加
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
                    
                
            } else if answerNumber == 1 {
                // グー画像を指定
                Image("gu")
                    // リサイズを指定
                    .resizable()
                    //画面に収まるように、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                Text("グー")
                    .padding(.bottom)
                
            } else if answerNumber == 2 {
                // チョキー画像を指定
                Image("choki")
                    // リサイズを指定
                    .resizable()
                    //画面に収まるように、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                Text("チョキ")
                    .padding(.bottom)
                
            } else if answerNumber == 3 {
                // パー画像を指定
                Image("pa")
                    // リサイズを指定
                    .resizable()
                    //画面に収まるように、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                Text("パー")
                    .padding(.bottom)
            }

            // 「じゃんけんをする！」ボタン
            Button(action: {
                // Buttonがタップされた時の動き
                print("タップされたよ！")
                
                var newAnswerNumber = 0
                
                // 前回のじゃんけんと異なる手札が出るまでループ
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                    
                } while answerNumber == newAnswerNumber
                
                // 新しいじゃんけんの結果を格納する
                answerNumber = newAnswerNumber
                
            }) {
                // Buttonに表示する文字を指定
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .padding(.bottom)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
