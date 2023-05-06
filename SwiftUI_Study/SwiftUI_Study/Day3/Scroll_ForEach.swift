//
//  ScrollView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/06.
//

import SwiftUI

/*
 - ScrollView & ForEach
  원하는 방향으로 스크롤 하기 위해서는 Stack과 ScrollView의 axis를 설정해야 한다.
  View를 반복해서 사용하기 위해서는 ForEach를 사용해야 한다.
  (UIKit의 DiffableDataSource와 다르지만 비슷하다. Collection 데이터로 View를 그리고 각각의 Data는 Hashable한 id값이 있어야 한다.)
 */

struct Scroll: View {
    var body: some View {
        // 세로
        ScrollView(.vertical, showsIndicators: false) { // axis default는 .vertical
            VStack() {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.cyan)
                        .frame(height: 300)
                        .overlay {
                            Text("\(index)")
                                .font(.title)
                        }
                }
            }
        }
        
        // 가로
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.cyan)
                        .frame(width: 300, height: 300)
                        .overlay {
                            Text("\(index)")
                                .font(.title)
                        }
                }
            }
        }
    }
}

struct Scroll_ForEach_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
