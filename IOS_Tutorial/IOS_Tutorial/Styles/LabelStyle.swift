//
//  LabelStyle.swift
//  IOS_Tutorial (iOS)
//
//  Created by tiennv2 on 19/07/2022.
//

import Foundation
import SwiftUI

struct TradingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .firstTextBaseline) {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TradingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
