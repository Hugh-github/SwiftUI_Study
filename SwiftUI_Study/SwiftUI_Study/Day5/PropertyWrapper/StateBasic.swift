//
//  StateBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/11.
//

import SwiftUI

/*
 property wrapper : 속성이 저장되는 방식을 관리하는 코드와 속성을 정의하는 코드 사이에서 분리 계층을 추가하는 방법입니다.
 (내가 느끼기엔 우리가 사용하던 계산 property를 객체화 시켜줌으로써 재사용 가능하게 만들어준다.)
 
 ex)
 @propertyWrapper
 struct SmallNumber {
     private var number: Int
     private(set) var projectedValue: Bool

     var wrappedValue: Int {
         get { return number }
         set {
             if newValue > 12 {
                 number = 12
                 projectedValue = true
             } else {
                 number = newValue
                 projectedValue = false
             }
         }
     }

     init() {
         self.number = 0
         self.projectedValue = false
     }
 }
 
 struct SomeStructure {
     @SmallNumber var someNumber: Int
 }
 
 var someStructure = SomeStructure()

 someStructure.someNumber = 4
 print(someStructure.$someNumber) // false
 */

/*
 @State : 변수가 변경될때, View 에서도 update 되면서 값이 변경되기 원할때 사용
 - MVVM 패턴에서 observer 가능한 데이터를 관찰하는 것과 같다.
 */



struct StateBasic: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("카운트 : \(count)")
                
                HStack(spacing: 20) {
                    Button {
                        backgroundColor = .red
                        title = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("1번 버튼")
                            .font(.headline)
                    }
                    
                    Button {
                        backgroundColor = .purple
                        title = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                            .font(.headline)
                    }

                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBasic_Previews: PreviewProvider {
    static var previews: some View {
        StateBasic()
    }
}
