//
//  WhatsForDinnerApp.swift
//  WhatsForDinner
//
//  Created by Chuck Belcher on 8/6/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct WhatsForDinnerApp: App {
    
    //Register app delegate for for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    //@UIApplicationDelegateAdaptor(DataService.connect_db.self var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DinnerViewModel())
        }
    }
}
