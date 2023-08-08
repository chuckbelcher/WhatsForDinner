//
//  DinnerModel.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import Foundation

struct Meal: Identifiable {
    // ID is the document ID in the Firestore database
    var id: String
    var sunday: String
    var monday: String
    var tuesday: String
    var wednesday: String
    var thursday: String
    var friday: String
    var saturday: String
}
