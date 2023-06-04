//
//  onTabGesture.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/06/04.
//

import SwiftUI

/*
 UIKit의 UITabGestureRecognizer와 유사하다.
 
 - 버튼이 아닌 View에 Gesture를 인식하고 동작하는 기능을 추가할 수 있다.
 - 일반적인 버튼과 동일한 기능을 하는 경우 Button을 커스텀해서 사용하자
 */


struct OnTabGestureBasic: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(20)
            }
            
            Text("한번 클릭시 실행")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(20)
                .onTapGesture {
                    // Button과 다르게 눌렸을 때 하이라이트가 없다.
                    isSelected.toggle()
                }
            
            Text("두번 클릭시 실행")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(20)
                .onTapGesture(count: 2) {
                    // Button과 다르게 눌렸을 때 하이라이트가 없다.
                    isSelected.toggle()
                }
            
            Text("길게 클릭시 실행")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(20)
                .onLongPressGesture(minimumDuration: 2) {
                    isSelected.toggle()
                }
        }
        .padding(40)
    }
}

struct onTabGesture_Previews: PreviewProvider {
    static var previews: some View {
        OnTabGestureBasic()
    }
}
