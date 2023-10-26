//
//  FollowerStackView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct Follower: View {
    var count: Int
    var contentName: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text(String(count))
                .font(.title2)
                .bold()
            Text(contentName)
                .font(.subheadline)
        }
    }
}

struct Follower_Previews: PreviewProvider {
    static var previews: some View {
        Follower(count: 100, contentName: "팔로워")
    }
}
