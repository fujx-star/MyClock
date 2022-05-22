//
//  MyEditingButton.swift
//  Clock
//
//  Created by fjx on 2022/3/30.
//

import SwiftUI

struct MyEditingButton : View {
    
    var worldclock: WorldClock
    @Binding var worldclocks :[WorldClock]
    
    var body: some View {
        Button(action: {
            for (index,item) in worldclocks.enumerated() {
                if (item.id == worldclock.id) {
                    worldclocks.remove(at: index)
                    break
                }
            }
        }) {
            Image(systemName: "minus.circle.fill").imageScale(.small).foregroundColor(.red)
        }
    }
}

struct MyEditingButton_Previews: PreviewProvider {
    @State static var testData = [
        WorldClock(id:1,
                   offset:"Today,+0HRS",
                   location:"Cupertino",
                   time:"9:41",
                   apm:"AM")
    ]
    
    static var previews: some View {
        MyEditingButton(worldclock:testData[0],worldclocks: $testData).preferredColorScheme(.dark)
    }
}

