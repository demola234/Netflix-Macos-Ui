//
//  NetflixUiApp.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 07/01/2022.
//

import SwiftUI

@main
struct NetflixUiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get{.none}
        set{}
    }
}
