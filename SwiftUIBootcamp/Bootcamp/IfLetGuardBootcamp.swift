//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Safe coding")
                
                // if there is a real value in displayText
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // force unwrapping - if there isn't any value inside, error occurs
                // DO NOT USE EVER!!!!
                // Text(displayText!)
                //     .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        // if there is an actual userID, start loading
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error, There is no User ID!"
        }
    }
    
    // using guard
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error, There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
