//
//  SubView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/11.
//

import SwiftUI

struct SubView: View {
    @State var buttonColor: Color = .blue
    @Binding var backgroundColor: Color // BindingBasic에서 선언한 State를 Binding 해준다.
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(backgroundColor: .constant(Color.orange), title: .constant("BindingChild"))
    }
}
