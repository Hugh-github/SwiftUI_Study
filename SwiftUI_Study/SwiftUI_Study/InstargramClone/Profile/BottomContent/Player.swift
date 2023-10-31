//
//  Player.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/29.
//

import SwiftUI

struct Player: View {
    @State var playerData: [String] // 개시자가 삭제하거나 수정할 일이 있을 수 있기 때문에 @State or @StateObject로 설정
    
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
            ForEach(0..<playerData.count, id: \.self) { index in // id를 설정하는 이유는 배열이 변경될 수 있기 때문이다.
                Rectangle()
                    .fill(.blue)
                    .frame(height: 200)
                    .overlay (
                        Text(playerData[index])
                    )
            }
        }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player(playerData: ["동영상 1", "동영상 2", "동영상 3", "동영상 4"])
    }
}
