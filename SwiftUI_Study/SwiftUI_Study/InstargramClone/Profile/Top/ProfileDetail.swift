//
//  ProfileDetail.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct ProfileDetail: View {
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 40) {
                ProfileCircleImage(name: "신동헌")
                
                HStack(spacing: 40) {
                    Follower(count: 0, contentName: "게시물")
                    Follower(count: 0, contentName: "팔로워")
                    Follower(count: 0, contentName: "팔로잉")
                }
            }
            .padding([.trailing, .bottom])
            
            HStack(spacing: 10) {
                ProfileActionButton(title: "프로필 편집") {
                    print("편집")
                }

                ProfileActionButton(title: "프로필 공유") {
                    print("공유")
                }
            }
            .padding([.leading, .trailing])
        }
    }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}
