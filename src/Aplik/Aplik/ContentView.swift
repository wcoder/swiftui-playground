//
//  ContentView.swift
//  Aplik
//
//  Created by Yauheni Pakala on 4/27/20.
//  Copyright © 2020 Yauheni Pakala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Welcome to me awesome app!")
                .fontWeight(.semibold)
                .foregroundColor(.green)
            Button(action: {
                print("Button pressed!")
            }) {
                Text("Hit Me!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
