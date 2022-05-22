//
//  WakeupAlarm.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

struct WakeupAlarm: Hashable,Codable,Identifiable{
    var id: Int
    var time: String
    var date: String
    var apm: String
}

var wakeupalarmData = [
    WakeupAlarm(id: 1,
          time: "6:00",
          date: "Tomorrow Morning",
          apm: "AM"),
    WakeupAlarm(id: 2,
          time: "11:00",
          date: "Today Morning",
          apm: "AM")
]
