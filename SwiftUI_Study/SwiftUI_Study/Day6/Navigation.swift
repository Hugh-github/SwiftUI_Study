//
//  Navigation.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/12.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    SecondNav()
                } label: {
                    Text("Move to second")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("제목") // 화면의 제목
            .navigationBarTitleDisplayMode(.inline)
            // .automatic : 자동, .inline: 상단에 작게, .large : 크게 (inline과 large는 컴파일러가 알아서 결정)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("안녕")
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("하세요")
                }
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
