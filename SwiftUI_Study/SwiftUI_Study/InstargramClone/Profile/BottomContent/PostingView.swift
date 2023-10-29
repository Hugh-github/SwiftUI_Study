//
//  PostingView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct PostingView: View {
    @State var selectedIndex: Int
    let contentImage = ["camera", "play.rectangle", "person.crop.rectangle"]
    
    var body: some View {
        HStack(spacing: 0) {
            Tab(isSelected: .constant(selectedIndex == 0), imageName: "camera")
                .frame(minWidth: 0, maxWidth: .infinity)
                .onTapGesture { onTabButtonTap(0) }
            
            Tab(isSelected: .constant(selectedIndex == 1), imageName: "play.rectangle")
                .frame(minWidth: 0, maxWidth: .infinity)
                .onTapGesture { onTabButtonTap(1) }
            
            Tab(isSelected: .constant(selectedIndex == 2), imageName: "person.crop.rectangle")
                .frame(minWidth: 0, maxWidth: .infinity)
                .onTapGesture { onTabButtonTap(2) }
        }
        .padding(.top)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
    }
    
    private func onTabButtonTap(_ index: Int) {
        withAnimation { self.selectedIndex = index }
    }
}

struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        PostingView(selectedIndex: 0)
    }
}
