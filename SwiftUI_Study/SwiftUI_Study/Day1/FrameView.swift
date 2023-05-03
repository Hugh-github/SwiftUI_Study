//
//  FrameView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/03.
//

import SwiftUI

/*
 frame과 alignment
 - 원하는 위치에 View를 표현하기 위해서는 중요하다.
 - 원하는 위치에 Content를 배치하기 위해서는 frame 크기와 alignment를 통해 원하는 위치로 이동시켜야 한다?
 */

struct FrameView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hellow World")
                .font(.title)
                .background(Color.green)
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.red)
            
        Divider() // 경계선이 나타난다.
            
            Text("Hello Student")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.red)
        }
        
        VStack(spacing: 20) {
            Text("Hello world")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
