//
//  TernaryBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/29.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button : \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Is starting state" : "Ending stete")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 250 : 50,
                    height: isStartingState ? 30 : 100)
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
