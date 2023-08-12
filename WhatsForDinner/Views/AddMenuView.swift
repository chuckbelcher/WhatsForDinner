//
//  AddMenuView.swift
//  WhatsForDinner
//
//  Created by Charles Belcher on 8/9/23.
//

import SwiftUI

struct AddMenuView: View {
    
    @State var sunday: String = ""
    @State var monday: String = ""
    @State var tuesday: String = ""
    @State var wednesday: String = ""
    @State var thursday: String = ""
    @State var friday: String = ""
    @State var saturday: String = ""
    
    var body: some View {
        
        VStack {
            Text("Add New Menu")
                .font(.title)
            
            TextField("Sunday", text: $sunday)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            TextField("Monday", text: $monday)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            TextField("Tuesday", text: $tuesday)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            TextField("Wednesday", text: $wednesday)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            TextField("Thursday", text: $thursday)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            TextField("Friday", text: $friday)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            TextField("Saturday", text: $saturday)
                .padding(.leading, 20)
                .padding(.bottom, 20)
        
            Spacer()

        }
        .padding()
    }
}

struct AddMenuView_Previews: PreviewProvider {
    static var previews: some View {
        AddMenuView()
    }
}
