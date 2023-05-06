//
//  InitEnum.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/06.
//

import SwiftUI

struct InitEnum: View {
    // property
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // Nested Type
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        switch fruit {
        case .apple:
            self.backgroundColor = .red
            self.title = "사과"
        case .orange:
            self.backgroundColor = .orange
            self.title = "오렌지"
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text(title)
                .font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitEnum_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitEnum(count: 100, fruit: .apple)
            InitEnum(count: 46, fruit: .orange)
        }
    }
}
