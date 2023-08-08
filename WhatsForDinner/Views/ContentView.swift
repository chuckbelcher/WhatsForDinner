//
//  ContentView.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import SwiftUI

struct ContentView: View {
    let dinnerViewModel = DinnerViewModel()
    
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

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
