//
//  ScreenPresent.swift
//  task2
//
//  Created by Muhammad Islamov on 17/02/22.
//

import SwiftUI

struct ScreenPresent: View {
    @Environment(\.presentationMode) var presentation
    @State var data = "No Data"
    var delegate: BindingDelegate?
    
    var body: some View {
        VStack{
        Button(action: {
            delegate?.onReceived(value: "Mukhammad")
            presentation.wrappedValue.dismiss()
        }, label: {
            Text("Back to Home")
        })
            Text(data).padding()
    }
    }
}

struct ScreenPresent_Previews: PreviewProvider {
    static var previews: some View {
        ScreenPresent()
    }
}
