//
//  StateBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/29.
//

import SwiftUI

struct StateBootcamp: View {
    
    // Adding var, System knows that the variable can be changed
    // Adding @State to the variable, View starts watching that variable
    // if the state variable does change, automatically update view
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
        
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        self.backgroundColor = .red
                        self.myTitle = "Button #1 was pressed"
                        self.count += 1
                    }
                    
                    Button("Button 1") {
                        self.backgroundColor = .purple
                        self.myTitle = "Button #2 was pressed"
                        self.count -= 1
                    }
                }
                
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
