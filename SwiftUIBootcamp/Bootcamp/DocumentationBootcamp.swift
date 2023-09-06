//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    
    // MARK: BODY
    
    // option + cmd + <- : fold comment
    // Seokwon - Working copy - things to do:
    /*
       1) Fix title
       2) Fix alert
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(trailing:
                                            Button("Alert", action: {
                                                showAlert.toggle()
                                            })
                    )
                    .alert(isPresented: $showAlert, content: {
                        getAlert(text: "This is alert")
                    })
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView
    /// This summary will show up when you click option + click on the view
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets and alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns and alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}


// MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
