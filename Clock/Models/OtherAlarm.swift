//
//  OtherAlarm.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

struct OtherAlarm: Hashable,Codable,Identifiable{
    var id: Int
    var time: String
    var description: String
    var apm: String
    var isOn: Bool
}

var otheralarmData = [
    OtherAlarm(id: 1,
          time: "7:00",
          description: "Hot yoga, every Saturday",
          apm: "AM",
          isOn: true),
    OtherAlarm(id: 2,
          time: "11:00",
          description: "Homework, this Sunday",
          apm: "PM",
          isOn: false)
]
