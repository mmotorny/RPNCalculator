// Copyright (c) 2023, Maksym Motorny. All rights reserved.
// Use of this source code is governed by a 3-clause BSD license that can be
// found in the LICENSE file.

import SwiftUI

enum ShiftState: CaseIterable {
    case up
    case none
    case down
    
    mutating func cycle() {
        switch self {
        case .none:
            self = .up
        case .up:
            self = .down
        case .down:
            self = .none
        }
    }
}

struct CalculatorButton: View {
    let action: () -> Void
    let shiftUpLabel: String
    let label: String
    let shiftDownLabel: String
    let backgroundColor: Color
    @Binding var shiftState: ShiftState
    
    init(action: @escaping () -> Void, shiftUpLabel: String, label: String, shiftDownLabel: String, shiftState: Binding<ShiftState>, backgroundColor: Color) {
        self.action = action
        self.shiftUpLabel = shiftUpLabel
        self.label = label
        self.shiftDownLabel = shiftDownLabel
        self.backgroundColor = backgroundColor
        self._shiftState = shiftState
    }

    var body: some View {
        VStack {
            Button(action: self.action) {
                VStack {
                    Text(self.shiftUpLabel)
                        .font(self.shiftState == .up ? .body.weight(.heavy) : .body)
                    Text(self.label)
                        .font(.custom(self.shiftState == .none ? "InconsolataCondensed-ExtraBold" : "InconsolataCondensed-ExtraLight", size: 50))
                    Text(self.shiftDownLabel)
                        .font(self.shiftState == .down ? .body.weight(.heavy) : .body)
                }
            }
            .padding(8)
            .frame(width: 70)
            .background(self.backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(action: {}, shiftUpLabel: "sin", label: "7", shiftDownLabel: "sinh", shiftState: .constant(.none), backgroundColor: .gray)
    }
}
