//
//  ProfileView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ProfileDetail()
            
            HStack {
                ProfileActionButton(title: "프로필 편집") {
                    print("편집")
                }
                
                Spacer()
                
                ProfileActionButton(title: "프로필 공유") {
                    print("공유")
                }
            }
            .padding([.leading, .trailing], 30)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
