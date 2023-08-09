//
//  smallDisplayCard.swift
//  WhatsForDinner
//
//  Created by Charles Belcher on 8/9/23.
//

import SwiftUI

struct smallDisplayCard: View {
    var label = ""
    var data = ""
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 300, height: 60), contentMode: .fit)
            
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

struct smallDisplayCard_Previews: PreviewProvider {
    static var previews: some View {
        smallDisplayCard(label: "Sunday:", data: "Pizza and Breadsticks")
    }
}
