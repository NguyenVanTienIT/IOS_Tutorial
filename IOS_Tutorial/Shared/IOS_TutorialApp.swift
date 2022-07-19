//
//  IOS_TutorialApp.swift
//  Shared
//
//  Created by tiennv2 on 19/07/2022.
//

import SwiftUI

@main
struct IOS_TutorialApp: App {
    let persistenceController = PersistenceController.shared
    var scrum = DailyScrum.sampleData[0]

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
