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
                        medDisplayCard(label: "Sunday", data: meal.sunday)
                        medDisplayCard(label: "Monday", data: meal.monday)
                        medDisplayCard(label: "Tuesday", data: meal.tuesday)
                        medDisplayCard(label: "Wednesday", data: meal.wednesday)
                        medDisplayCard(label: "Thursday", data: meal.thursday)
                        medDisplayCard(label: "Friday", data: meal.friday)
                        medDisplayCard(label: "Saturday", data: meal.saturday)
                        
                    }
                    
                }
                Spacer()
                
            }
        }
        .onAppear {
            dinnerViewModel.getDinnerMenu(menuid: menuName)
        }
    }
    
}

struct ShowMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ShowMenuView(menuName: "20230806")
            .environmentObject(DinnerViewModel())
    }
}
