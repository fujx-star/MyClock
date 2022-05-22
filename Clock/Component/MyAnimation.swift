//
//  MyAnimation.swift
//  Clock
//
//  Created by fjx on 2022/3/30.
//

import SwiftUI

extension Animation {
    static func ripple() -> Animation {
        Animation.spring(dampingFraction:0.5).speed(0.7)
    }
}

extension Animation {
    static func fade() -> Animation {
        Animation.easeInOut(duration: 1)
    }
}

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        AnyTransition.move(edge: .bottom)
    }
}


