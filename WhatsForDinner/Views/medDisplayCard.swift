//
//  medDisplayCard.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/11/23.
//

import SwiftUI

struct medDisplayCard: View {
    var label = ""
    var data = ""
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 300, height: 90), contentMode: .fit)
            
            HStack {
                Text(label)
                    .padding(.horizontal)
                    .font(.title2)
                    .bold()
                Text(data)
                    .font(.headline)
                Spacer()
            }
        }
    }
}

struct medDisplayCard_Previews: PreviewProvider {
    static var previews: some View {
        medDisplayCard(label: "Sunday:", data: "Pizza and Breadsticks")
    }
}
