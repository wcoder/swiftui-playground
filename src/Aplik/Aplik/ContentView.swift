//
//  ContentView.swift
//  Aplik
//
//  Created by Yauheni Pakala on 4/27/20.
//  Copyright © 2020 Yauheni Pakala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var whosThereIsVisible: Bool = false
    
    var body: some View {
        VStack{
            Text("Welcome to me awesome app!")
                .fontWeight(.semibold)
                .foregroundColor(.green)
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text("Hit Me!")
            }
            .alert(isPresented: $alertIsVisible, content: { () ->
                Alert in
                return Alert(title: Text("Hello there!"),
                             message: Text("This is my first pop-up."),
                             dismissButton: .default(Text("Awesome!")))
                
            })
            Button(action: {
                self.whosThereIsVisible = true
            }) {
                Text("Knock, Knock!")
            }
            .alert(isPresented: $whosThereIsVisible, content: { () ->
                Alert in
                return Alert(title: Text("Who's There?"),
                             message: Text("Little old lady."),
                             dismissButton: .default(Text("Little old lady who?")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
