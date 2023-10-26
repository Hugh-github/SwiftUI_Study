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
    @State var isSelected: Bool = false
    var imageName: String
    
    var body: some View {
        VStack {
            Button {
                isSelected.toggle()
            } label: {
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
            .padding([.leading, .trailing])
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab(imageName: "camera")
    }
}
