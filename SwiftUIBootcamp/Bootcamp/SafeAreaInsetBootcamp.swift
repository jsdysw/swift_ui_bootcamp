//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .bottom, alignment: .leading) {
                Text("HI")
                    .padding()
                    .background(Color.blue)
                    .clipShape(Circle())
                    .padding()
            }
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("HI")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
            }
            .safeAreaInset(edge: .bottom, alignment: .center) {
                Text("HI")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
