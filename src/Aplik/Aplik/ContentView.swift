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
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("\(self.target)")
            }
            
            // Slider row
            HStack {
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            
            // Button row
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text("Hit Me!")
            }
            .alert(isPresented: $alertIsVisible, content: { () -> Alert in
                let roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello there!"),
                             message: Text(
                                "The slider's value is \(roundedValue).\n" +
                                "You scored \(self.pointsForCurrentRound()) points this round."),
                             dismissButton: .default(Text("Awesome!")))
                
            })
            
            Spacer()
            
            // Score row
            HStack {
                Button(action: {})
                {
                    Text("Start over")
                }
                Spacer()
                Text("Score:")
                Text("9999999")
                Spacer()
                Text("Round:")
                Text("9999999")
                Spacer()
                Button(action: {})
                {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
    
    func pointsForCurrentRound() -> Int {
        
        let roundedValue = Int(self.sliderValue.rounded())
        let difference = abs(self.target - roundedValue)
        let awardedPoints = 100 - difference

        return awardedPoints;
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
