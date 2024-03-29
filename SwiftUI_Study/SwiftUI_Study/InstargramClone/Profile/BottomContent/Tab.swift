//
//  Tab.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

// Button으로 하면 문제가 있음 다른 버튼을 클릭했을 때 기존 버튼의 isSelected가 변경되지 않음
// Button 보다는 Grid로 만들어 onTapGesture 활용하자

struct Tab: View {
    @Binding var isSelected: Bool // Binding으로 해야 하는 이유 : 양방향이 필요하다 즉 selectedIndex가 변할 때 선택 여부가 바뀌기 때문에 Binding으로 설정해야 한다.
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                
            Spacer()
            
            Rectangle()
                .foregroundColor(isSelected ? .black : .white)
                .frame(height: 2)
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab(isSelected: .constant(true), imageName: "camera")
    }
}
