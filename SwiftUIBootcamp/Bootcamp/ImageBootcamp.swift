//
//  ImageBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/29.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image(systemName: "xmark")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundColor(.green)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//            )
        
            
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
