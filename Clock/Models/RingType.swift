//
//  RingType.swift
//  Clock
//
//  Created by fjx on 2022/3/30.
//

struct RingType: Hashable,Codable,Identifiable{
    var id: Int
    var type: String
}

var rings = [
    RingType(id: 1,type: "Radar(Default)"),
    RingType(id: 2,type: "Apex"),
    RingType(id: 3,type: "Beacon"),
    RingType(id: 4,type: "Bulletin"),
    RingType(id: 5,type: "By The Seaside"),
    RingType(id: 6,type: "Chimes"),
    RingType(id: 7,type: "Circuit"),
    RingType(id: 8,type: "Constellation"),
    RingType(id: 9,type: "Cosmic"),
    RingType(id: 10,type: "Crystals"),
    RingType(id: 11,type: "Hillside"),
    RingType(id: 12,type: "Illuminate"),
    RingType(id: 13,type: "Night Owl"),
    RingType(id: 14,type: "Opening"),
    RingType(id: 15,type: "Playtime")
]
