//
//  StackView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/05.
//

import SwiftUI

/*
 Stack의 종류 : VStack, HStack, ZStack
 1. VStack : Vertical, 세로
 2. HStack : Horizontal, 가로
 3. ZStack : Z-index, 겹쳐서 나열
 */


struct StackView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("안녕")
                .background(Color.red)
            Text("하세요")
                .background(Color.green)
            
            Divider()
            
            HStack {
                Text("안녕")
                    .background(Color.yellow)
                Text("하세요")
                    .background(Color.blue)
            }
            
            Divider()
            
            ZStack(alignment: .topLeading) {
                // 순서대로 쌓인다. -> LIFO
                // 제일 먼저 쌓인 View가 아래쪽에 온다.
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
            }
        }
        
        // ZStack vs. background
        VStack(spacing: 50) {
            // 여러개의 View Layer가 필요한 경우 ZStack 활용
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // 단순한 Layer를 가지고 있다면 background 활용
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background {
                    Circle()
                        .frame(width: 100, height: 100)
                }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
