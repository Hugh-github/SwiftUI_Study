//
//  Posting.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/29.
//

import SwiftUI

// Grid를 사용하게 되면 데이터 상태가
// [[PostingData, PostingData, PostingData], [PostingData, PostingData, PostingData]]
// 성능 저하가 의심되면 LazyVGrid, LazyHGrid를 사용해라 (Gird는 모든 View를 동시에 가져오기 때문에 Scroll을 통해 데이터를 가져오기 위해서는 LazyGrid가 더 어울린다.

struct Posting: View {
    @State var postingData: [String] // 개시자가 삭제하거나 수정할 일이 있을 수 있기 때문에 @State or @StateObject로 설정
    
    let columns = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]
    
    var body: some View {
        LazyVGrid(
            columns: columns,
            spacing: 2
        ) {
            ForEach(0..<postingData.count, id: \.self) { index in // id를 설정하는 이유는 배열이 변경될 수 있기 때문이다.
                Rectangle()
                    .fill(.green)
                    .frame(height: 150)
                    .overlay (
                        Text(postingData[index])
                    )
            }
        }
    }
}

struct Posting_Previews: PreviewProvider {
    static var previews: some View {
        Posting(postingData: ["안녕", "이미지", "사랑", "인연", "뭐야"])
    }
}
