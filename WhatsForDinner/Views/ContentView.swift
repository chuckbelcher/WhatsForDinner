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
                    smallDisplayCard(label: "Sunday", data: meal.sunday)
                    smallDisplayCard(label: "Monday", data: meal.monday)
                    smallDisplayCard(label: "Tuesday", data: meal.tuesday)
                    smallDisplayCard(label: "Wednesday", data: meal.wednesday)
                    smallDisplayCard(label: "Thursday", data: meal.thursday)
                    smallDisplayCard(label: "Friday", data: meal.friday)
                    smallDisplayCard(label: "Saturday", data: meal.saturday)
                    
                }

            }
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
