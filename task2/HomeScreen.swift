//
//  HomeScreen.swift
//  task2
//
//  Created by Muhammad Islamov on 17/02/22.
//

import SwiftUI

struct HomeScreen: View,BindingDelegate {
    @State var toPresent = false
    @State var data = "No Data"
    
    func onReceived(value: String) {
        data = value
    }
    
    
    var body: some View {
        VStack{
        Button(action: {
            toPresent.toggle()
        }, label: {
            Text("Present Screen")
        }).sheet(isPresented: $toPresent, content: {
            ScreenPresent(data: "Islamov", delegate: self)
        })
            Text(data).padding()
    }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
