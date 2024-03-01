//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Bisma S Wasesasegara on 02/03/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
