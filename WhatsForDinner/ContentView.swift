//
//  ContentView.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import SwiftUI

struct ContentView: View {
    let dataService = DataService()
    
    var body: some View {
        VStack {
            Text("Whats for Dinner")
            
            Button {
                //dataService.makeReservation()
                //All Wired up
            } label: {
                Text("Test Firestore")
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
