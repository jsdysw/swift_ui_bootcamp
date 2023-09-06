//
//  AnimationBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/30.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
                
//                withAnimation(
//                    Animation
//                        .default.delay(1.0)
//                        .repeatCount(5, autoreverses: true)
//                ) {
//                    isAnimated.toggle()
//                }
            }
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
