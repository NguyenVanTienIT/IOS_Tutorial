//
//  Theme.swift
//  IOS_Tutorial (iOS)
//
//  Created by tiennv2 on 19/07/2022.
//

import Foundation
import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow, .purple:
            return .black
        case .indigo, .magenta, .navy, .oxblood: return .white
        }
    }
    
    var mainColor: Color {
        print(rawValue)
        return Color(rawValue)
    }
}
