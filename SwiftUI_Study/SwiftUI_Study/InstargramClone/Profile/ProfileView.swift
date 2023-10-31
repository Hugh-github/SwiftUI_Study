//
//  ProfileView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct ProfileView: View {
//    @State var selectedIndex: Int
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileDetail()
                PostingView(selectedIndex: 0)
                    .scaledToFit()
//                PageView(posting: [PostingView(selectedIndex: $selectedIndex), PostingView(selectedIndex: $selectedIndex), PostingView(selectedIndex: $selectedIndex)])
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
//        ProfileView(selectedIndex: 0)
    }
}
