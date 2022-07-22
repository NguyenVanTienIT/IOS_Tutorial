//
//  ScrumdingerApp.swift
//  IOS_Tutorial (iOS)
//
//  Created by tiennv2 on 19/07/2022.
//

import Foundation
import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
