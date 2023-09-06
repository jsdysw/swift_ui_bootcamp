//
//  SpacerBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/29.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.yellow)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .background(.purple)
            .padding(.horizontal)
            .background(.blue)
            
            Spacer()
                .frame(width: 10)
                .background(.yellow)
            
            Rectangle()
                .frame(height: 55)
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
