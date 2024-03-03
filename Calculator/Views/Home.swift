//
//  Home.swift
//  Calculator
//
//  Created by Ray Chang on 2024/3/3.
//

import SwiftUI

struct Home: View {
    
    @State var displayValue = 0
    
    // Buttons
    let buttons: [[CalculatorButtons]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                // MARK: Display
                Spacer()
                HStack {
                    Spacer()
                    
                    Text("\(displayValue)")
                        .bold()
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                }
                .padding()
                
                // MARK: Buttons
                ForEach(buttons, id: \.self) { row in
                    
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { item in
                            Button {
                                
                            } label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(width: self.buttonWidth(item: item), height: self.buttonHeight())
                                    .background(item.buttonColor)
                                    .clipShape(.rect(cornerRadius: self.buttonWidth(item: item) / 2))
                            }
                        }
                    }
                }
            }
        }
    }
    
    // Button Width
    func buttonWidth(item: CalculatorButtons) -> CGFloat {
        if item == .zero {
            return ((UIScreen.main.bounds.width - (4 * 12)) / 4) * 2
        }
        return (UIScreen.main.bounds.width - (5 * 12)) / 4
    }
    
    // Button Height
    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - (5 * 12)) / 4
    }
}

#Preview {
    Home()
}
