//
//  ProfileDetail.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct ProfileDetail: View {
    var body: some View {
        HStack(alignment: .center, spacing: 40) {
            ProfileCircleImage(name: "신동헌")
            
            HStack(spacing: 40) {
                Follower(count: 0, contentName: "게시물")
                Follower(count: 0, contentName: "팔로워")
                Follower(count: 0, contentName: "팔로잉")
            }
        }
        .padding()
    }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}
