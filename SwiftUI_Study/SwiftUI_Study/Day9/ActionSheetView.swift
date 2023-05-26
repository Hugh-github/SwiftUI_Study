//
//  ActionSheetView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/26.
//

import SwiftUI

/*
 Action Sheet : 화면 아래에서 팝업창이 나타나도록 하는 기능
 - 다양한 커스텀이 가능하다.
 */

struct ActionSheetView: View {
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Jacob KR")
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit) // 비율을 지정 1.0 이면 가로 세로 비율이 같다
            
            Spacer()
        }
        .confirmationDialog("BasicActionSheet", isPresented: $showActionSheet) {
            // ActionSheet을 Custom
            Button("좋아요", role: .none) {
                resultActionSheet = "좋아요"
            }
            
            Button("신고하기", role: .destructive) {
                resultActionSheet = "신고하기"
            }
            
            Button("취소하기", role: .cancel) {
                showActionSheet = false
            }
        }
        
        /*
         Alert과 마찬가지로 actionSheet은 iOS 16.4까지만 지원한다.
         iOS 15부터는 위에서 사용한 confirmationDialog를 사용을 권장한다.
         */
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
