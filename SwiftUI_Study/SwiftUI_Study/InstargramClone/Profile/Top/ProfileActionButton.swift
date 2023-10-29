//
//  ProfileActionButton.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct ProfileActionButton: View {
    private var color: Color
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .foregroundColor(.black)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .padding([.top, .bottom], 7)
                .padding([.leading, .trailing])
                .background(color, in: Rectangle())
                .cornerRadius(10)
        }
    }
    
    init(
        color: Color = Color(red: 211/255, green: 211/255, blue: 211/255),
        title: String,
        action: @escaping () -> Void
    ) {
        self.color = color
        self.title = title
        self.action = action
    }
}

struct ProfileActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButton(title: "프로필 편집") {
            print("편집")
        }
    }
}
