//
//  PostingView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct PostingView: View {
    @State var selectedIndex: Int
    
    var body: some View {
        VStack {
            TopTap(selectedIndex: $selectedIndex)
            if selectedIndex == 0 {
                Posting(postingData: ["이미지 1", "이미지 2", "이미지 3", "이미지 4", "이미지 5"])
            } else if selectedIndex == 1 {
                Player(playerData: ["동영상 1", "동영상 2", "동영상 3", "동영상 4"])
            }
        }
    }
}

struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        PostingView(selectedIndex: 0)
    }
}
