//
//  ProfileView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct ProfileView: View {
    // MARK: UIPageViewController
//    @State var selectedIndex: Int
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileDetail()
                
                // MARK: TabView & ScrollView
                PostingView(selectedIndex: 0)

                // MARK: UIPageViewController
//                PageView(posting: [PostingView(selectedIndex: $selectedIndex), PostingView(selectedIndex: $selectedIndex), PostingView(selectedIndex: $selectedIndex)])
            }
        }
        .frame(maxHeight: .infinity)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        
        // MARK: UIPageViewController
//        ProfileView(selectedIndex: 0)
    }
}
