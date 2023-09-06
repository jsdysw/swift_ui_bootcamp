//
//  ColorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                Color(#colorLiteral(red: 1, green: 0.1555866599, blue: 0.7787387967, alpha: 1))
            )
            .frame(width: 300, height: 200)
            .shadow(color: .red, radius: 10, x: -20, y: -20)
        
        
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
