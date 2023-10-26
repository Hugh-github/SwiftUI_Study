//
//  PostingView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct PostingView: View {
    private var contentImage = ["camera", "play.rectangle", "person.crop.rectangle"]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<3) { index in
                Tab(imageName: contentImage[index])
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
        .padding(.top)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
    }
}

struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        PostingView()
    }
}
