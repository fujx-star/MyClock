//
//  WorldClock.swift
//  Clock
//
//  Created by fjx on 2022/3/27.
//

import SwiftUI

struct WorldClock: Hashable,Codable,Identifiable{
    var id: Int
    var offset: String
    var location: String
    var time: String
    var apm: String
}

var worldclockData = [
    WorldClock(id:1,
               offset:"Today,+0HRS",
               location:"Cupertino",
               time:"9:41",
               apm:"AM"),
    WorldClock(id:2,
               offset:"Today,+3HRS",
               location:"New York",
               time:"12:41",
               apm:"PM"),
    WorldClock(id:3,
               offset:"Today,+9HRS",
               location:"Geneva",
               time:"6:41",
               apm:"PM"),
    WorldClock(id:4,
               offset:"Today,+11HRS",
               location:"Dubai",
               time:"8:41",
               apm:"PM"),
    WorldClock(id:5,
               offset:"Tomorrow,+15HRS",
               location:"Beijing",
               time:"12:41",
               apm:"AM"),
    WorldClock(id:6,
               offset:"Tomorrow,+18HRS",
               location:"Sydney",
               time:"3:41",
               apm:"AM")
]
