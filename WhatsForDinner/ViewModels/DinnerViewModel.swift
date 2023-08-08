//
//  DinnerViewModel.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import Foundation
import Firebase

class DinnerViewModel {
    
    @Published var meals : [Meal] = []
    
    init() {
        getDinnerMenu()
    }
    
     func getDinnerMenu() {
        let db = Firestore.firestore()
        let dinners = db.collection("Dinners").document("20230806")
        //var allMeals: [Meal] = []
        dinners.getDocument { docSnapshot, error in
            var allMeals: [Meal] = []
            if let error = error {
                print(error)
            } else if let docSnapshot = docSnapshot {
                
                let currentMeals = docSnapshot.data()
                let id = docSnapshot.documentID
                let sunday = currentMeals?["Sunday"] as? String ?? "Nothing for Sunday"
                let monday = currentMeals?["Monday"] as? String ?? "Nothing for Monday"
                let tuesday = currentMeals?["Tuesday"] as? String ?? "Nothing for Tuesdayday"
                let wednesday = currentMeals?["Wednesday"] as? String ?? "Nothing for Wednesday"
                let thursday = currentMeals?["Thursday"] as? String ?? "Nothing for Thursday"
                let friday = currentMeals?["Friday"] as? String ?? "Nothing for Friday"
                let saturday = currentMeals?["Satday"] as? String ?? "Nothing for Satday"
                
                allMeals.append(Meal(id: id, sunday: sunday, monday: monday, tuesday: tuesday, wednesday: wednesday, thursday: thursday, friday: friday, saturday: saturday))
                self.meals = allMeals
                
                
                //print("Meal List for week of \(id): Sunday: \(sunday), Monday: \(monday), Tuesday:\(tuesday)")
            } else {
                print("No data found")
            }
            
        }
        print("From getDinnerMenu \(meals)")
    }
    
    func CreateDinnerMenu() {
        let db = Firestore.firestore()
        let dinners = db.collection("Dinners")
        
        //Create a document with a given identifier
        dinners.document("20230806").setData([
            "Sunday": "Pizza",
            "Monday": "Smash Burgers",
            "Tuesday": "Tacos",
            "Wednesday": "Pot Luck",
            "Thursday": "Salmon",
            "Friday": "Kobe",
            "Saturday": "Chicket Tenders and Fries"
        ])
        
    }
}
