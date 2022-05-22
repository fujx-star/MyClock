//
//  WorldClockRow.swift
//  Clock
//
//  Created by fjx on 2022/3/27.
//

import SwiftUI

struct WorldClockRow: View {
    var worldclock : WorldClock
    var editing: Bool
    @Binding var worldclocks :[WorldClock]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading,spacing: 1) {
                if editing {
                    MyEditingButton(worldclock: worldclock, worldclocks: $worldclocks)
                }
                Text(worldclock.offset).font(.subheadline).foregroundColor(.gray).frame(width: 130,alignment: .leading)
                Text(worldclock.location).font(.headline).frame(width: 100,alignment: .leading)
            }
            Spacer()
            HStack(alignment: .center,spacing: 1) {
                Text(worldclock.time).font(.largeTitle).frame(width: 80.0,alignment: .trailing)
                Text(worldclock.apm).font(.body).padding([.top, .trailing], 5.0).frame(width: 50.0,alignment: .leading)
            }.padding()
        }.padding()
    }
}

struct WorldClockRow_Previews: PreviewProvider {
    @State static var testData = worldclockData

    static var previews: some View {
        WorldClockRow(worldclock: testData[4],editing: true,worldclocks: $testData).preferredColorScheme(.dark)
    }
}



