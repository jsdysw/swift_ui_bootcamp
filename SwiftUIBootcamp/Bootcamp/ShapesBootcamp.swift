//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        
        VStack {
            Circle()
    //            .fill(.green)
    //            .stroke()
    //            .stroke(.red)
                .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [10]))
            
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 300, height: 200)
        }
    }
        
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
