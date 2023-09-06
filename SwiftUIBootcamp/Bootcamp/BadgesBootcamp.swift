//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon on 2023/09/06.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
//        List {
//            Text("Hello, world!")
//                .badge("NEW ITEMS")
//                .badge(3)
//        }
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
//                .badge(5)
                .badge("NEW")
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }
        
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
