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
                .padding(.bottom)
            VStack {
                HStack {
                    Text("Sunday")
                        .font(.title3)
                        .padding(.trailing)
                    TextField("Add Dinner Items Here ...", text: $sunday)
                }
                .padding(.leading, 20)
                .padding(.bottom, 30)
                
                HStack {
                    Text("Monday")
                        .font(.title3)
                        .padding(.trailing)
                    TextField("Add Dinner Items Here ...", text: $monday)
                }
                .padding(.leading, 20)
                .padding(.bottom, 30)
                
                HStack {
                    Text("Tuesday")
                        .font(.title3)
                        .padding(.trailing)
                    TextField("Add Dinner Items Here ...", text: $tuesday)
                }
                .padding(.leading, 20)
                .padding(.bottom, 30)
                
                HStack {
                    Text("Wednesday")
                        .font(.title3)
                        .padding(.trailing)
                    TextField("Add Dinner Items Here ...", text: $wednesday)
                }
                .padding(.leading, 20)
                .padding(.bottom, 30)
                
                HStack {
                    Text("Thursday")
                        .font(.title3)
                        .padding(.trailing)
                    TextField("Add Dinner Items Here ...", text: $thursday)
                }
                .padding(.leading, 20)
                .padding(.bottom, 30)
                
                HStack {
                    Text("Friday")
                        .font(.title3)
                        .padding(.trailing)
                    TextField("Add Dinner Items Here ...", text: $friday)
                }
                .padding(.leading, 20)
                .padding(.bottom, 30)
                
                HStack {
                    Text("Saturday")
                        .font(.title3)
                        .padding(.trailing)
                    TextField("Add Dinner Items Here ...", text: $saturday)
                }
                .padding(.leading, 20)
                .padding(.bottom, 30)
                
                Spacer()
                
                Button {
                    print("Submitting New Menu")
                } label: {
                    Text("Submit New Menu")
                        .padding(.horizontal, 50)
                        .padding(.vertical, 25)
                        .font(.title3)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }
            }

        }
        .padding()
    }
}

struct AddMenuView_Previews: PreviewProvider {
    static var previews: some View {
        AddMenuView()
    }
}
