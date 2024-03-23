//
//  ContentView.swift
//  Bullseye
//
//  Created by Vivek Pillai on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text("90")
            HStack {
                Text("1")
                Slider(value: .constant(89), in: 1.0...100.0)
                Text("100")
            }
                Button("Hit Me") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    
                }
            }
        }


#Preview {
    ContentView()
}
