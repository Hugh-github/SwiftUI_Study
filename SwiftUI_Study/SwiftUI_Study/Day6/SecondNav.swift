//
//  SecondNav.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/12.
//

import SwiftUI

struct SecondNav: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            Button {
                dismiss()
            } label: {
                Text("뒤로가기")
                    .foregroundColor(.white)
                    .font(.headline)
            }

        }
    }
}

struct SecondNav_Previews: PreviewProvider {
    static var previews: some View {
        SecondNav()
    }
}
