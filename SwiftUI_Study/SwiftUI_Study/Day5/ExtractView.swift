//
//  ExtractView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/11.
//

import SwiftUI

/*
 - 함수와 계산 속성을 이용해 화면을 만드는 body를 분리
 */

struct ExtractView: View {
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            // vStack
            vStack
        }
    }
    
    // VStack
    var vStack: some View {
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button {
                backgroundColor = .yellow
            } label: {
                Text("배경 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
            
            createBox()
        }
    }
    
    // 함수를 이용한 방법
    func createBox() -> some View {
        HStack {
            ForEach(0..<3) { _ in
                VStack {
                    Text("사과")
                    Text("34")
                }
            }
        }
    }
}

struct ExtractView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractView()
    }
}
