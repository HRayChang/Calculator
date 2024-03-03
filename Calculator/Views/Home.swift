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
                
            }
        }
    }
}

#Preview {
    Home()
}
