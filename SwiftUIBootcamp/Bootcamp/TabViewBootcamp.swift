//
//  TabViewBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/30.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("Browse tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)

            Text("Profile tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
        
        
        // Paging tab view
//        let icons: [String] = [
//            "heart.fill", "globe", "house.fill", "person.fill"
//        ]
//
//        TabView {
//            ForEach(icons, id: \.self) { icon in
//                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
//            }
////            RoundedRectangle(cornerRadius: 25.0)
////                .foregroundColor(.red)
////            RoundedRectangle(cornerRadius: 25.0)
////                .foregroundColor(.blue)
////            RoundedRectangle(cornerRadius: 25.0)
//        }
//        .frame(height: 300)
//        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.green
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
