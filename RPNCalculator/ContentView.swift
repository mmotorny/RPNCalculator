// Copyright (c) 2023, Maksym Motorny. All rights reserved.
// Use of this source code is governed by a 3-clause BSD license that can be
// found in the LICENSE file.

import SwiftUI

struct ContentView: View {
    @State private var shiftState: ShiftState = .none
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                CalculatorButton(action: {}, shiftUpLabel: "sin", label: "7", shiftDownLabel: "sinh", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "cos", label: "8", shiftDownLabel: "cosh", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "tan", label: "9", shiftDownLabel: "tanh", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "√", label: "-", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "1/x", label: "÷", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
            }
            HStack {
                CalculatorButton(action: {}, shiftUpLabel: "sin⁻¹", label: "4", shiftDownLabel: "sinh⁻¹", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "cos⁻¹", label: "5", shiftDownLabel: "cosh⁻¹", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "tan⁻¹", label: "6", shiftDownLabel: "tanh⁻¹", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "π", label: "+", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "xʸ", label: "×", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
            }
            HStack {
                CalculatorButton(action: {}, shiftUpLabel: "10ˣ", label: "1", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "x²", label: "2", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "eˣ", label: "3", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "x'↑", label: "x↑", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "↻", label: "⇆", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
            }
            HStack {
                CalculatorButton(action: {}, shiftUpLabel: "log₁₀", label: "0", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "log", label: ".", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "rad↔°", label: "±", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {
                    self.shiftState.cycle()
                }, shiftUpLabel: "⤓", label: "⤒", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .gray)
                CalculatorButton(action: {}, shiftUpLabel: "⏻", label: "⌫", shiftDownLabel: " ", shiftState: $shiftState, backgroundColor: .red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
