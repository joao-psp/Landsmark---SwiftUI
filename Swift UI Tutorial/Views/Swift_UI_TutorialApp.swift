//
//  Swift_UI_TutorialApp.swift
//  Swift UI Tutorial
//
//  Created by João Pedro DTI on 11/08/21.
//

import SwiftUI

@main
struct Swift_UI_TutorialApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
