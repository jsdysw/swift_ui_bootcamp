//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.default)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.orange)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.yellow)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring())
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.green)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 3.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0))
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
