//
//  CatchTable_CloneApp.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/27.
//

import SwiftUI

@main
struct CatchTable_CloneApp: App {
    @StateObject private var swipeData = SwipeData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(swipeData)
        }
    }
}
