//
//  OnAppearBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/06/04.
//

import SwiftUI

/*
 onAppear: 화면이 나타나기 전에 수행할 작업을 추가합니다.
 
 ex) 화면에 이미지를 불러와 사용할 때 모든 이미지를 가져오는 것이 아닌 특정 View가 보여질 때 fetch 하도록 함으로써 load를 부드럽게 할 수 있다.
 
 func onAppear(perform action: (() -> Void)? = nil) -> some View
 함수가 호출되는 순간은 화면의 유형에 따라 다르지만 action은 첫 번째 렌더링된 프레임이 나타나기 전에 완료된다.
 */

struct OnAppearBasic: View {
    @State var noti: String = "시작전"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(noti)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noti = "시작 완료"
                }
            }
            .navigationTitle("생성된 박스 : \(count)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct OnAppearBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBasic()
    }
}
