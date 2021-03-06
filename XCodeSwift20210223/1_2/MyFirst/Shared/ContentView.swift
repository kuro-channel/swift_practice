//
//  ContentView.swift
//  Shared
//
//  Created by 黒岩卓誠 on 2022/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hi, Swift!")
                .font(.largeTitle)
                .padding()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("切り替えボタン")
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(Color.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
