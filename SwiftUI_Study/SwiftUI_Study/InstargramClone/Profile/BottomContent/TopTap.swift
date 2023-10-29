//
//  TopTap.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/29.
//

import SwiftUI

struct TopTap: View {
    @Binding var selectedIndex: Int
    
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

struct TopTap_Previews: PreviewProvider {
    static var previews: some View {
        TopTap(selectedIndex: .constant(0))
    }
}
