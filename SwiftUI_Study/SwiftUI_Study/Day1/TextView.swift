//
//  TextView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/03.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello world")
                .font(.title) // dynamic Type Size 설정
                .fontWeight(.semibold) // 폰트의 두께 설정 (bold() == fontWeight(.bold))
                .underline(true, color: .red) // 밑줄
                .italic() // 글자 기울기
                .strikethrough(true, color: .red) // 취소 선
            
            Text("Hello, student")
                .font(.system(size: 25, design: .serif)) // system 사이즈를 통해 font 크기 설정 (고정)
            
            Text("numberOfLine numberOfLine numberOfLine numberOfLine numberOfLine numberOfLine numberOfLine numberOfLine numberOfLine numberOfLine numberOfLine")
                .foregroundColor(.green) // Text 색상 변경
                .lineLimit(1) // Text가 차지하는 최대 줄 수 설정 (설정하지 않으면 자동으로 모든 Text가 보이도록 줄 수를 설정한다.)
            
            Text("numberOfLine numberOfLine numberOfLine numberOfLine")
                .frame(width: 50, height: 50) // frame 사이즈에서 표시할 수 있는 만큼 화면에 보여진다.
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
