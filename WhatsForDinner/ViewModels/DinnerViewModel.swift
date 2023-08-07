//
//  DinnerViewModel.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import Foundation
import Firebase

class DinnerViewModel {
    
    func getDinnerMenu()  {
        let db = Firestore.firestore()
        let dinners = db.collection("Dinners").document("20230806")
        
        dinners.getDocument { docSnapshot, error in
            
            if let error = error {
                print(error)
            } else if let docSnapshot = docSnapshot {
                print(docSnapshot.data()!)
            } else {
                print("No data found")
            }
        }
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
