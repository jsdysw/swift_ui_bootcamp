//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/05.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2023)) ?? Date()
    let endingDate: Date = Date()
    
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date is: ")
            Text(selectedDate.description)
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            // Date Picker 1
            DatePicker("Date Picker 1", selection: $selectedDate)
                .accentColor(.red)
            .datePickerStyle(
                CompactDatePickerStyle()
//                GraphicalDatePickerStyle()
//                WheelDatePickerStyle()
            )
            
            
            // Date Picker 2
            DatePicker("Date Picker 2", selection: $selectedDate, displayedComponents: [.date])
            
            
            // Date Picker 3
            // User can select date from startingDate to endingDate
            DatePicker("Date Picker 3", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
        }
        
        
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
