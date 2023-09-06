//
//  NavigationStackBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/30.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {

                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }

                    ForEach(0..<3) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Fruit: \(value)")
            }
        }
        
//        NavigationStack(path: $stackPath) {
//            ScrollView {
//                VStack(spacing: 40) {
//
//                    Button("Super segue!") {
//                        stackPath.append(contentsOf: [
//                            "Coconut", "Watermelon", "Mango"
//                        ])
//                    }
//
//                    ForEach(fruits, id: \.self) { fruit in
//                        NavigationLink(value: fruit) {
//                            Text(fruit)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Nav bootcamp")
//            .navigationDestination(for: String.self) { value in
//                Text("Fruit: \(value)")
//            }
//        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
