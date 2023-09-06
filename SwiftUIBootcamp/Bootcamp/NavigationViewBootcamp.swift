//
//  NavigationViewBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/29.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    
    // Avoid putting another navigation into a navigation
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, World", destination: MyOtherView())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                trailing:
                    // Navigation link is not lazy so all of the links are loaded at the sametime
                    // even before we move on the the linked view
                    NavigationLink(
                    destination: MyOtherView(),
                    label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(.red)
            )
        }
    }
}

struct MyOtherView: View {
    
    // presentationMode indicate that our environment now is within navigation view in another sheet
    // so we can hide our navigation bar
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)

            VStack {
                Button("Back button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("Third screen"))
            }
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
