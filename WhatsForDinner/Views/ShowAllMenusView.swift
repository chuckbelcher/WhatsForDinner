//
//  ShowAllMenusView.swift
//  WhatsForDinner
//
//  Created by Charles Belcher on 8/9/23.
//

import SwiftUI

struct ShowAllMenusView: View {
    @EnvironmentObject var dinnerViewModel: DinnerViewModel
    var body: some View {
        NavigationStack {
            Text("All Menus")
                .font(.title)
            ScrollView {
                LazyVStack (alignment: .leading) {
                    ForEach(dinnerViewModel.menus, id: \.self) { menu in
                        NavigationLink {
                            ShowMenuView(menuName: menu)
                        } label: {
                            smallDisplayCard(label: menu)
                        }
                        .accentColor(.black)
                        
                    }
                    
                }
                .padding(.horizontal)
                Spacer()
                
            }
        }
    }
}

struct ShowAllMenusView_Previews: PreviewProvider {
    static var previews: some View {
        ShowAllMenusView()
            .environmentObject(DinnerViewModel())
    }
}
