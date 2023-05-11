//
//  BindingBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/11.
//

import SwiftUI

/*
 @Binding : State를 subview에서 사용하기 위해 property wrapper
 */

struct BindingBasic: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                // 함수의 파라미터로 @State 변수를 전달하기 위해서는 $표시를 사용해야 한다.
                SubView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingBasic_Previews: PreviewProvider {
    static var previews: some View {
        BindingBasic()
    }
}
