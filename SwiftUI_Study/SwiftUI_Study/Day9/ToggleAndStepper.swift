//
//  ToggleAndStepper.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/26.
//

import SwiftUI

struct ToggleAndStepper: View {
    // Toggle
    @State var isOn: Bool = false
    
    // Stepper
    @State var value: Int = 0
    @State var value2: Int = 0
    
    var body: some View {
        VStack(spacing: 10) {
            Text(isOn ? "온라인" : "오프라인")
            
            HStack {
                Toggle(isOn: $isOn) {
                    Text("로그인 상태 확인")
                }
                .toggleStyle(.switch)
            }
            
            Stepper("기본 Stepper : \(value)", value: $value)
                .padding()
            
            Stepper("\(value2)") {
                step(amount: 5)
            } onDecrement: {
                step(amount: -5)
            }
            .padding()

            
            Spacer()
        }
        .padding()
    }
    
    func step(amount: Int) {
        value2 += amount
    }
    
}

struct ToggleAndStepper_Previews: PreviewProvider {
    static var previews: some View {
        ToggleAndStepper()
    }
}
