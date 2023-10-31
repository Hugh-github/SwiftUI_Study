//
//  PostingView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

// MARK: UIPageViewController와 사용 가능
//struct PostingView: View {
//    @Binding var selectedIndex: Int
//    
//    var body: some View {
//        List {
//            Section {
//                if selectedIndex == 0 {
//                    Posting(postingData: ["이미지 1", "이미지 2", "이미지 3", "이미지 4", "이미지 5"])
//                } else if selectedIndex == 1 {
//                    Player(playerData: ["동영상 1", "동영상 2", "동영상 3", "동영상 4"])
//                } else {
//                    Rectangle()
//                        .frame(height: 500)
//                }
//            } header: {
//                TopTap(selectedIndex: $selectedIndex)
//            }
//            .frame(maxHeight: .infinity)
//        }
//        .scrollDisabled(true)
//        .listStyle(.plain)
//        .listSectionSeparator(.hidden, edges: .all)
//    }
//}


// MARK: TabView활용한 버전
//struct PostingView: View {
//    @State var selectedIndex: Int
//    
//    var data = [
//        ["이미지 1", "이미지 2", "이미지 3", "이미지 4", "이미지 5"],
//        ["동영상 1", "동영상 2", "동영상 3", "동영상 4"]
//    ]
//    
//    var body: some View {
//        TabView(selection: $selectedIndex) {
//            ForEach(0..<3) { index in
//                VStack {
//                    TopTap(selectedIndex: $selectedIndex)
//                    if index == 0 {
//                        Posting(postingData: data[index])
//                    } else if index == 1 {
//                        Player(playerData: data[index])
//                    } else {
//                        Rectangle()
//                            .frame(height: 500)
//                    }
//                }
//                
////                List {
////                    Section {
////                        if index == 0 {
////                            Posting(postingData: data[index])
////                        } else if index == 1 {
////                            Player(playerData: data[index])
////                        } else {
////                            Rectangle()
////                                .frame(height: 500)
////                        }
////                    } header: {
////                        TopTap(selectedIndex: $selectedIndex)
////                    }
////                }
////                .scrollDisabled(true)
////                .listStyle(.plain)
////                .listSectionSeparator(.hidden, edges: .all)
//            }
//        }
//        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//    }
//}


// MARK: ScrollView 활용한 version
// TabView를 ScrollView 밖으로 빼자
// 현재 문제점 : ScrollView의 Size가 가장 큰 사이즈를 따라간다.

struct PostingView: View {
    @State var selectedIndex: Int

    var body: some View {
        VStack {
            TopTap(selectedIndex: $selectedIndex)
            
            ScrollViewReader { proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top) {
                        ForEach(0..<3) { index in
                            PostingListView(baseIndex: index)
                                .id(index)
                        }
                    }
                }
                .onChange(of: selectedIndex) { newValue in
                    proxy.scrollTo(newValue, anchor: .leading)
                }
            }
        }
    }
}

struct PostingListView: View {
    var baseIndex: Int
    
    var data = [
        ["이미지 1", "이미지 2", "이미지 3", "이미지 4", "이미지 5"],
        ["동영상 1", "동영상 2", "동영상 3", "동영상 4"]
    ]

    var body: some View {
        VStack {
            if baseIndex == 0 {
                Posting(postingData: data[baseIndex])
            } else if baseIndex == 1 {
                Player(playerData: data[baseIndex])
            } else {
                Rectangle()
                    .frame(height: 800)
            }
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        PostingView(selectedIndex: 0)
        
        // MARK: UIPageViewController
//        PostingView(selectedIndex: .constant(0))
    }
}
