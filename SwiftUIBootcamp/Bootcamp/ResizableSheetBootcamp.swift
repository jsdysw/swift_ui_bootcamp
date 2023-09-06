//
//  ResizableSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.2), .medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled()
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("20%") {
                    detents = .fraction(0.2)
                }
                Button("MEDIUM") {
                    detents = .medium
                }
                Button("LARGE") {
                    detents = .large
                }
            }
        }
        
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
