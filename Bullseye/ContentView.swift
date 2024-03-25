//
//  ContentView.swift
//  Bullseye
//
//  Created by Vivek Pillai on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(2.0)
                .font(.footnote)
                .kerning(2.0)
            Text("90")
                .fontWeight(.black)
                .kerning(-1.0)
                .font(.largeTitle)

            HStack {
                Text("1")
                    .bold()
                Slider(value:self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello, SwiftUI!")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible) {
                Alert(title: Text("Hello There"), message: Text("This is my first pop up"), dismissButton: .default(Text("Awesome!")))
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
