//
//  DatePickerBasic.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/30.
//

import SwiftUI

struct DatePickerBasic: View {
    @State var selectedDate1: Date = Date()
    @State var selectedDate2: Date = Date()
    @State var selectedDate3: Date = Date()
    @State var selectedDate4: Date = Date()
    @State var selectedDate5: Date = Date()
    
    var currentDate: String {
        let current = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_kr")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")
        dateFormatter.dateFormat = "YYYY년 MM월 dd일 a HH시 mm분" // a는 오전 오후를 표시할 수 있는 문자이다.
        dateFormatter.amSymbol = "오전"
        dateFormatter.pmSymbol = "오후"
        
        return dateFormatter.string(from: current)
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                Text(currentDate)
                
                Divider()
                
                VStack {
                    DatePicker("기본 DatePicker", selection: $selectedDate1)
                        .tint(.blue) // DatePicker가 눌렸을 때 색깔이 변경 (accentColor는 deprecated)
                        .datePickerStyle(.compact)
                    
                    Text(dateFormatter.string(from: selectedDate1))
                }
                
                Divider()
                
                VStack {
                    DatePicker("달력 DatePicker", selection: $selectedDate2)
                        .tint(.blue) // DatePicker가 눌렸을 때 색깔이 변경 (accentColor는 deprecated)
                        .datePickerStyle(.graphical)
                    
                    Text(dateFormatter.string(from: selectedDate2))
                }
                
                Divider()
                
                VStack {
                    DatePicker("Wheel DatePicker", selection: $selectedDate3)
                        .tint(.blue) // DatePicker가 눌렸을 때 색깔이 변경 (accentColor는 deprecated)
                        .datePickerStyle(.wheel)
                    
                    Text(dateFormatter.string(from: selectedDate3))
                }
                
                Divider()
                
                VStack {
                    DatePicker("날짜만 선택", selection: $selectedDate4, displayedComponents: .hourAndMinute) // displayedComponents를 이용해 날짜 및 시간만 선택이 가능하게 변경이 가능하다.
                        .tint(.blue) // DatePicker가 눌렸을 때 색깔이 변경 (accentColor는 deprecated)
                        .datePickerStyle(.wheel)
                    
                    Text(dateFormatter.string(from: selectedDate4))
                }
            }
        }
    }
}

struct DatePickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBasic()
    }
}
