//
//  ContextMenuView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/19.
//

import SwiftUI

/*
 ContextMenu는 UIKit의 UIMenu와 유사하지만 유저가 버튼을 길게 누르고 있을 때 동작한다.
 */

struct ContextMenuView: View {
    @State var status: String = ""
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack(spacing: 30) {
            Text(status)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Context menu test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나옵니다")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(backgroundColor)
            .cornerRadius(20)
            .contextMenu {
                Button {
                    status = "공유 완료"
                    backgroundColor = .yellow
                } label: {
                    Label {
                        Text("Share Post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }

                }
                
                Button {
                    status = "신고 접수"
                    backgroundColor = .red
                } label: {
                    Label {
                        Text("Report Post")
                    } icon: {
                        Image(systemName: "exclamationmark.square.fill")
                    }

                }

            }
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
