//
//  ListBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/29.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "pineapple", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        // Most powerful thing in the List is the ability to move and delete items from the list
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    // \.self bring id from each item
                    ForEach(fruits, id:\.self) { fruit in
                        Text(fruit.capitalized)
                            .background(.blue)
                            .padding(.vertical)
                    }
                    .onMove(perform: move)
                    .onDelete(perform: delete)
                    .listRowBackground(Color.orange)
    //                .onDelete(perform: { indexSet in
    //                    delete(indexSet: indexSet)
    //                })
                        
                }
                Section(
                    header: Text("Veggies")) {
                    ForEach(veggies, id:\.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
//            .listStyle(SidebarListStyle())
            .accentColor(.purple)
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func move(fromOffset: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: fromOffset, toOffset: toOffset)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func add() {
        fruits.append("coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
