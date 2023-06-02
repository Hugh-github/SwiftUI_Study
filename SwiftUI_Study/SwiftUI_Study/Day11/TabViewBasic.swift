//
//  TabViewBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/06/02.
//

import SwiftUI

/*
 TabView : 직관적인 화면 이동이 가능하다.
 - 대부분 앱들이 Tab을 이용해 화면을 이동한다.(앱의 핵심 기능? 들을 Tab View를 이용해 직관적으로 보여주고 이동 가능하게 만든다.)
 */

struct TabViewBasic: View {
    @State var initailPageNumber: Int = 0
    
    var body: some View {
        TabView(selection: $initailPageNumber) {
            HomeView(selectedTab: $initailPageNumber)
                .tabItem { // Tab에 사용할 이미지 text를 설정
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("둘러보기 화면")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("프로필 화면")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(.blue)
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            
            VStack(spacing: 20) {
                Text("홈 화면")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("프로필 화면으로 이동")
                        .font(.headline)
                        .padding(20)
                        .background(.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}

struct TabViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBasic()
    }
}
