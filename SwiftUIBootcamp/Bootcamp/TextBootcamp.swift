//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World")
            .font(.body)
            .fontWeight(.semibold)
            .bold()
//            .underline()
            .underline(true, color: .red)
            .italic()
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width:200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.3)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
