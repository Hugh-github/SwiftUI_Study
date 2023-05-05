//
//  Padding.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/05.
//

import SwiftUI

// Padding & Spacer
// Spacer : View간의 일정한 간격을 주고 싶을 때 사용

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // padding
            Text("Hello world")
                .background(Color.yellow)
                .padding() // edge = .all, length = 15
                .background(Color.blue)
                .padding(.leading, 30) // 기존 padding에 적용이 아니라 계속해서 추가된다.
                .background(Color.red)
            
            Divider()
            
            Text("Hello world")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.bottom, .top], 20)
            
            Text("안녕하세요 어서오세요 안녕하세요 어서오세요 안녕하세요 어서오세요 안녕하세요 어서오세요 안녕하세요 어서오세요 안녕하세요 어서오세요 안녕하세요 어서오세요")
        }
        .padding()
        .padding(.vertical, 30) // vertical == [.bottom, .top]
        .padding(.horizontal, 20) // horizontal == [.leading, .trailing]
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 10,
                    y: 10
                )
        )
        .padding()
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer() // 최대한 공간을 차지하려 한다.
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            HStack(spacing: 0) {
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange) // 동일한 간격을 준다.
                
                Rectangle()
                    .frame(height: 50)
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(height: 50)
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
            }
            .background(Color.yellow)
        }
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
