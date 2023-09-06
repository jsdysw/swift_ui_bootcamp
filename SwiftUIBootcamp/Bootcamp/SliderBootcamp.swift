//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var sliderValueStep: Double = 3
    @State var color: Color = .red

    var body: some View {
        VStack {
            Text("Rating: ")
            Text("\(sliderValue)")
            Slider(value: $sliderValue, in: 1...5)
                .padding(40)
                .accentColor(.red)
            
            
            Text("Rating: ")
            Text("\(sliderValueStep)")
            Text(
                String(format: "%.1f", sliderValueStep)
            )
            .foregroundColor(color)
              
            Slider(
                value: $sliderValueStep,
                in: 1...5,
                step: 1.0,
                onEditingChanged: {(_) in color = .green}
            )
            .padding(40)
            .accentColor(.blue)
            
            
          
            
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
