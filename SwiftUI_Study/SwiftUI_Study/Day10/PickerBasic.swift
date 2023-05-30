//
//  PickerBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/30.
//

import SwiftUI

/*
 Picker에는 몇 가지 style이 존재한다.
 1. inline
 2. Menu
 3. navigationLink
 4. Segmented
 5. Wheel
 */

/*
 SwiftUI Form?
 View를 그룹화 하는데 사용한다.
 각 Section 별로 그룹화를 통해 직관적인 UI 제공이 가능하다. (설정 앱을 보면 각각의 비슷한 기능들을 하는 목록들이 그룹화 된걸 확인할 수 있다.)
 */

struct PickerBasic: View {
    let typeOfPhone = ["애플", "삼성", "샤오미", "기타"]
    @State var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0..<typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        }
                    }
                    .pickerStyle(.inline)
                }
                
                Section {
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0..<typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section {
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0..<typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section {
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0..<typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0..<typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        }
                    }
                    .pickerStyle(.wheel)
                }
            } // View를 그룹화?
            .navigationTitle(Text("현재 사용중인 핸드폰 기종은?"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        PickerBasic()
    }
}
