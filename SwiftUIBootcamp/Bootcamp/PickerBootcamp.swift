//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct PickerBootcamp: View {

    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Selected: ")
                Text(selection)
            }
            
            // Picker 1
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(filterOptions.indices) { index in
                        Text(filterOptions[index])
                            .tag(filterOptions[index])
                    }
                }
            )
            .pickerStyle(SegmentedPickerStyle())
            .padding(50)
            
            // Picker 2
            Picker(
                selection: $selection,
                label:
                    Text("Filter: ")
                ,
                content: {
                    ForEach(filterOptions, id: \.self) { option in
                        HStack {
                            Text("\(option)")
                            Image(systemName: "heart.fill")
                        }
                        .tag(option)
                    }
                }
            )
            
            // Picker 3
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(18..<100) { number in
                        Text("\(number)")
                            .font(.headline)
                    }
                }
            )
            .pickerStyle(WheelPickerStyle())
            .padding()
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
