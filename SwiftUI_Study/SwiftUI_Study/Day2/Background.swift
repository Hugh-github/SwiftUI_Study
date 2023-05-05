//
//  Background.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/05.
//

import SwiftUI

/*
 - background, overlay
 1. background : 뒷배경 설정
 2. overlay : 앞배경 설정
 */

struct Background: View {
    var body: some View {
        VStack(spacing: 20) {
            // background
            Text("Hello world")
                .frame(width: 100)
                .background {
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color.green, Color.blue], startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        
                }
                .frame(width: 120, height: 120)
            
            
            // overlay
            Circle()
                .fill(Color.purple)
                .overlay {
                    Image(systemName: "envelope")
                }
                .frame(width: 100, height: 100)
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(Color.cyan)
                        .frame(width: 100, height:100)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                            , alignment: .bottomTrailing // alignment 쉼표를 이용해 설정이 가능하다.
                        )
                )
                .padding()
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
