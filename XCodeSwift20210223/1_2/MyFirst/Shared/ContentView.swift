//
//  ContentView.swift
//  Shared
//
//  Created by 黒岩卓誠 on 2022/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
        Text("Hi, Swift!")
            .font(.largeTitle)
            .padding()
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Button")/*@END_MENU_TOKEN@*/
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
