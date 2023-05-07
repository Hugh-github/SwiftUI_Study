//
//  LazyGridView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/07.
//

import SwiftUI

/*
 GridItem : LazyGrid 에서 레이아웃을 구성하기 위해서 사용해야 한다. (GridItem을 통해 크기 및 간격을 지정한다.)
 
 LazyGrid는 사람들이 스크롤할 때 셀을 생성한다. -> 모든 보기에 접근할 수 없다.
 */

struct LazyGridView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6), // 하나가 하나의 column이 된다. spacing은 각 column의 간격
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]
    
    // HGrid title
    let title: [String] = Array(1...1000).map { number in
        return "목록 \(number)"
    }
    
    let layoutItems: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders] // 상위 스크롤 뷰의 경계에 고정할 뷰(header와 footer) pinn : 고정
            ) {
                Section(header: Text("Section1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                            .overlay (
                                Text("\(index)")
                            )
                    }
                }
                
                Section(header: Text("Section2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 150)
                            .overlay (
                                Text("\(index)")
                            )
                    }
                }
            }
        }
        
        ScrollView(.horizontal) {
            LazyHGrid(
                rows: layoutItems,
                spacing: 20
            ) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .bold()
                    }
                }
            }
        }
        
        ZStack {
            Color.blue
                .ignoresSafeArea() // safeArea를 무시하고 View를 나타낼 수 있다. (edge를 통해 원하는 방향의 safeArea만 무시 가능하다.)
        }
    }
}

struct LazyGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridView()
    }
}
