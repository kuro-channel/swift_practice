//
//  ContentView.swift
//  Shared
//
//  Created by 黒岩卓誠 on 2022/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var outputText = "Hello, world!"
    
    var body: some View {
        VStack {
            Text(outputText)
                .padding()
            Button(action: {
                outputText = "Hi, Swift!"
            }) {
                Text("切り替えボタン")
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
