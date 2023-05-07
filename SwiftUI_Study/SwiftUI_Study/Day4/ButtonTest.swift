//
//  ButtonTest.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/07.
//

import SwiftUI

struct ButtonTest: View {
    @State var mainTitle = "버튼 안눌림"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(mainTitle)
                .font(.system(.title, weight: .semibold))
            
            Divider()
            
            Button {
                // action
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                // label : 버튼을 디자인
                Text("기본 버튼")
            }
            .tint(.red)
            
            Divider()
            
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Divider()
            
            Button {
                self.mainTitle = "좋아요"
            } label: {
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.red)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 60,height: 60)
                            .shadow(radius: 10)
                    )
            }

        }
    }
}

struct ButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTest()
    }
}
