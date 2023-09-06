//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors:[Color(#colorLiteral(red: 0.3274374306, green: 0.3300468922, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.05348546803, blue: 1, alpha: 1))]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors:[Color(#colorLiteral(red: 0.2989513278, green: 0.3696415424, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.07842957228, green: 0.06988131255, blue: 1, alpha: 1))]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 400)
                )
                .frame(width: 300, height: 200)
            
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors:[Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.02816938795, green: 0.05787950009, blue: 1, alpha: 1))]),
                        center: .center,
                        angle: .degrees(90))
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
