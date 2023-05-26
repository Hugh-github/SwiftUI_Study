//
//  TextFieldBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/26.
//

import SwiftUI

/*
 SwiftUI의 TextField는 UIKit의 TextField와 유사하다.
 
 But! TextView대신 SwiftUI에서는 TextEditor를 사용한다.
 */

struct TextFieldBasic: View {
    @State var inputText: String = ""
    @State var names = [String]()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("최소 2글자 이상 입력", text: $inputText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.gray.opacity(0.4))
                    .cornerRadius(10)
                
                Button {
                    if isTextEnough() {
                        saveName()
                    }
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.headline)
                }
                
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("당신의 이름은?")
        }
    }
    
    func isTextEnough() -> Bool {
        if inputText.count > 2 {
            return true
        }
        
        return false
    }
    
    func saveName() {
        self.names.append(inputText)
        inputText = ""
    }
}

struct TextFieldBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBasic()
    }
}
