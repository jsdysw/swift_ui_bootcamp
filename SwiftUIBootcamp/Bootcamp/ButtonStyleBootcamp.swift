//
//  ButtonStyleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonBorderShape(.capsule)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .buttonStyle(.plain)
            
            Button("Button Title") {
                
            }
            .controlSize(.large)
            .buttonStyle(.bordered)
            
            Button("Button Title") {
                
            }
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .controlSize(.regular)
            .buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
