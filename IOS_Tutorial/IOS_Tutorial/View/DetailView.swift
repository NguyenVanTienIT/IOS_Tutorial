//
//  DetailView.swift
//  IOS_Tutorial (iOS)
//
//  Created by tiennv2 on 20/07/2022.
//

import Foundation
import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: Text("AAA")) {
                    Label("Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("10 minutes")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 5)
                        .background(scrum.theme.mainColor)
                        .foregroundColor(scrum.theme.accentColor)
                        .cornerRadius(8)
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendess in
                    Label("\(attendess.name)", systemImage: "person")
                }
            }
        }
        .padding(.top, 0)
        .navigationTitle(scrum.title)
    }
}

struct DetailView_Prview: PreviewProvider {
    static var previews: some View {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
