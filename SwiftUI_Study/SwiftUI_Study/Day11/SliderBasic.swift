//
//  SliderBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/06/02.
//

import SwiftUI

/*
 Slider
 - 수치를 조절하는 화면에서 사용된다.(ex. 화면 밝기)
 */

struct SliderBasic: View {
    @State var value: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("레벨")
                Text("\(value)")
                Text(String(format: "%.1f", value))
            }
            .foregroundColor(color)
            
            // value는 Int가 아닌 Double & Float으로 설정
            Slider(
                value: $value,
                in: 1...5,
                step: 1,
                onEditingChanged: { _ in
                    color = .red
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5")) {
                    Text("레벨")
                }
                .tint(.green)
                .padding()
        }
    }
}

struct SliderBasic_Previews: PreviewProvider {
    static var previews: some View {
        SliderBasic()
    }
}
