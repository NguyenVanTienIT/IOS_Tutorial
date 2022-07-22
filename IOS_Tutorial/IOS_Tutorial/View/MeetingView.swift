//
//  MeetingView.swift
//  IOS_Tutorial (iOS)
//
//  Created by tiennv2 on 21/07/2022.
//

import Foundation
import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("First")
                    Label("300", systemImage: "timer")
                }.padding(.leading, 20)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds")
                    Label("600", systemImage: "timer")
                }.padding(.trailing, 20)
            }
        }
    }
}

struct MeetingView_Preview: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}

