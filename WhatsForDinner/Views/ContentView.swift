//
//  ContentView.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var dinnerViewModel = DinnerViewModel()
    @State var meals = [Meal]()
    
    var body: some View {
        VStack {
            Text("Whats for Dinner")
                .font(.title)
                .bold()
            
            Button {
                //dinnerViewModel.CreateDinnerMenu()
                dinnerViewModel.getDinnerMenu()
                //All Wired up
            } label: {
                Text("Get Menu For Week")
                    .padding()
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .font(.headline)
            }
            
            Text("Not Loading ..... on first pass")
            
            List(meals) { meal in
                Text(meal.sunday)
                Text(meal.monday)
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
