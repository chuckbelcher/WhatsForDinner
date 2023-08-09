//
//  ShowMenuView.swift
//  WhatsForDinner
//
//  Created by Charles Belcher on 8/9/23.
//

import SwiftUI

struct ShowMenuView: View {
    @EnvironmentObject var dinnerViewModel: DinnerViewModel
    var menuName = ""
    var body: some View {
        
            VStack {
                HStack {
                    Text("Menu Name:")
                        .font(.title2)
                        .bold()
                    Text(menuName)
                        .foregroundColor(.blue)
                        .font(.title3)
                        .bold()
                }
                ScrollView {
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
        }
    }
}

struct ShowMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ShowMenuView(menuName: "20230806")
            .environmentObject(DinnerViewModel())
    }
}
