//
//  ScrumdingerApp.swift
//  IOS_Tutorial (iOS)
//
//  Created by tiennv2 on 19/07/2022.
//

import Foundation
import SwiftUI

struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
