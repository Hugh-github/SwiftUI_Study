//
//  OverLayView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/12.
//

import SwiftUI

/*
 fullScreen시 화면을 dismiss 하는 방법
 1. @Binding 활용
 2. @Environment 활용
 */

struct OverLayView: View {
    @Binding var isShow: Bool
//    @Environment(\.dismiss) var dismiss // .presentationMode는 deprecated
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            Button {
                isShow = false
//                dismiss()
            } label: {
                Text("dismiss")
                    .foregroundColor(.red)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }

        }
    }
}

struct OverLayView_Previews: PreviewProvider {
    static var previews: some View {
        OverLayView(isShow: .constant(false))
    }
}
