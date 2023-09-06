//
//  ForEachBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/29.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey"]

    var body: some View {
        VStack {
            ForEach(0..<4) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Index is: \(index)")
                }
            }
            
            ForEach(data.indices) { index in
                HStack {
                    Text("NEW ITEM: \(index)")
                }
            }
            
            ForEach(data.indices) { index in
                HStack {
                    Text("\(data[index]): \(index)")
                }
            }
            
            
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
