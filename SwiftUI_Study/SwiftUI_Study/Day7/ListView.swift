//
//  ListView.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/05/17.
//

import SwiftUI

/*
 List는 UIKit의 tableView or collectionView와 유사하다.
 - swipe delete 등 기능을 사용할 수 있다.
 */

struct ListView: View {
    @State var fruits = ["사과", "오렌지", "바나나", "수박"]
    @State var meats = ["돼지고기", "소고기", "닭고기"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveRow)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.orange)
                }
                
                Section {
                    ForEach(meats, id: \.self) { meat in
                        Text(meat)
                    }
                } header: {
                    Text("고기 종류")
                        .font(.headline)
                        .foregroundColor(.orange)
                }
            }
            .navigationTitle("우리동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.fruits.append("딸기")
                    } label: {
                        Text("Add")
                    }
                }
            }
        }
    }
    
    func deleteItem(index: IndexSet) {
        self.fruits.remove(atOffsets: index)
    }
    
    func moveRow(indices: IndexSet, newOffset: Int) {
        self.fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
