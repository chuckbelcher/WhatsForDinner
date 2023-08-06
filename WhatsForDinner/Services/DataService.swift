//
//  DataService.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import Foundation
import Firebase

class DataService {
    func makeReservation() {
        let db = Firestore.firestore()
        let dinners = db.collection("Dinners")
        
        //Create a document with a given identifier
        dinners.document("20230806").setData([
            "Sunday": "Pizza",
            "Monday": "Smash Burgers",
            "Tuesday": "Tacos",
            "Wednesday": "Pot Luck",
            "Thursday": "Salmon",
            "Friday": "Chicken and Mash Potatos",
            "Saturday": "Cheat Day"
        ])
        
    }
}
