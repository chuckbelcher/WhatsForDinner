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
            Text("Whats for Dinner?")
                .font(.title)
                .bold()

                TabView {
                    ShowAllMenusView()
                        .tabItem {
                            Image(systemName: "list.bullet")
                            Text("All Menus")
                        }
                    
                    AddMenuView()
                        .tabItem {
                            Image(systemName: "plus.square")
                            Text("Add Menu")
                        }
                
            }
                .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DinnerViewModel())
    }
}
