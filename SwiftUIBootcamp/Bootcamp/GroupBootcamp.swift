//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello World!")
            Text("Hello World!")
            Text("Hello World!")
            
            Group {
                Text("Hello World!")
                Text("Hello World!")
            }
            .font(.caption)
            .foregroundColor(.green)
            
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
