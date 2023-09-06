//
//  AlertBootcamp.swift
//  Bobusang
//
//  Created by Seokwon Yoon on 2023/08/30.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = "Default"
    @State var alertMessage: String = "Default"
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Button("Click here") {
                    alertType = .error
                    alertTitle = "Default"
                    alertMessage = "Default"
                    showAlert.toggle()
                }
                Button("Click here 2") {
                    alertType = .success
                    alertTitle = "title : click here 2"
                    alertMessage = "message: click here 2"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(
                title: Text(alertTitle),
                message: Text(alertMessage),
                dismissButton: .default(Text("There was an error")))
        case .success:
            return Alert(
                title: Text(alertTitle),
                message: Text(alertMessage),
                dismissButton: .default(Text("Success")))
        default:
            return Alert(title: Text("default"))
        }
        
        
//        return Alert(
//            title: Text("There is title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("delete"), action: {
//                backgroundColor = .purple
//            }),
//            secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
