//
//  Sheet.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/12.
//

import SwiftUI

/*
 Sheet은 modal과 유사하다.
 - .sheet : 일반적으로 내가 아는 modal default와 유사하다.
 - .fullScreenCover : 모든 화면을 채운다.(아래로 스크롤을 통해 화면을 닫을 수 없다.)
 */

struct Sheet: View {
    @State var isShow: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                isShow.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $isShow) {
                OverLayView(isShow: $isShow)
//                OverLayView()
            }
        }
    }
}

struct Sheet_Previews: PreviewProvider {
    static var previews: some View {
        Sheet()
    }
}
