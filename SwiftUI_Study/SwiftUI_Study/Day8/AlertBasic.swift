//
//  AlertBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/19.
//

import SwiftUI

struct AlertBasic: View {
    @State var showAlert: Bool = false
    @State var showAlert2: Bool = false
    
    @State var backgroundColor: Color = Color.yellow
    @State var alertTitel: String = ""
    @State var alertmessage: String = ""
    @State var alertType: AlertCase? = nil
    
    enum AlertCase: CaseIterable {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button {
                    showAlert.toggle()
                } label: {
                    Text("1번 버튼")
                }
                .alert("제목", isPresented: $showAlert) {
                    Button(role: .none) {
                        backgroundColor = .red
                    } label: {
                        Text("Change")
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.red)
                    }
                } message: {
                    Text("안녕하세요")
                }
                /*
                 15.0 부터 위 방식을 권장한다.
                 
                 기존에 사용하던 alert(isPresented:content:)와 Alert은 16.4까지만 지원한다.
                 alert(isPresented: $showAlert) {
                    Alert(title: Text("메시지 입력"))
                 }
                 
                 */
                
                Button {
                    showAlert2.toggle()
                    alertType = AlertCase.allCases.randomElement()
                    
                    switch alertType {
                    case .error:
                        alertTitel = "실패"
                        alertmessage = "다시 시도해 주세요"
                    case .success:
                        alertTitel = "성공"
                        alertmessage = "정상적으로 업로드 했습니다."
                    case .none:
                        break
                    }
                } label: {
                    Text("Alert 성공여부")
                }
                .alert(alertTitel, isPresented: $showAlert2) {
                    
                } message: {
                    Text(alertmessage)
                }
            }
        }
    }
}

struct AlertBasic_Previews: PreviewProvider {
    static var previews: some View {
        AlertBasic()
    }
}
