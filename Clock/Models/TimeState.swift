//
//  TimeState.swift
//  Clock
//
//  Created by fjx on 2022/3/29.
//

enum TimeState: String, CaseIterable, Codable, Hashable {
    case initial = "initial"
    case timing = "timing"
    case pausing = "pausing"
}
