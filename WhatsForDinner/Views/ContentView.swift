//
//  ContentView.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dinnerViewModel: DinnerViewModel

    
    var body: some View {
        VStack {
            Text("Whats for Dinner")
                .font(.title)
                .bold()
            Text(dinnerViewModel.meals.first?.id ?? "")
                .font(.title3)
                .padding(.bottom)
                .foregroundColor(.blue)
                .bold()
            
            LazyVStack (alignment: .leading) {
                ForEach(dinnerViewModel.meals, id: \.self) { meal in
                    Text("Sunday: \(meal.sunday)")
                    Text("Monday: \(meal.monday)")
                    Text("Tuesday: \(meal.tuesday)")
                    Text("Wednesday: \(meal.wednesday)")
                    Text("Thursday: \(meal.thursday)")
                    Text("Friday: \(meal.friday)")
                    Text("Saturday: \(meal.saturday)")
                    
                }
                .padding(.vertical, 10)
                .font(.headline)
            }
            .padding(.leading, 20)
            
            
            Spacer()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DinnerViewModel())
    }
}
