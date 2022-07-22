//
//  ScrumsView.swift
//  IOS_Tutorial (iOS)
//
//  Created by tiennv2 on 19/07/2022.
//

import Foundation
import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums, id: \.id) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CarView(scrum: scrum)
                }
                .listRowBackground(Color(.orange))
            }
        }
        .navigationTitle(Text("title"))
        .toolbar {
            Button(action: {print("XXX")}) {
                Image(systemName: "plus")
            }
        }
        .accessibilityLabel(Text("Add scrum"))
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
