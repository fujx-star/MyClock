//
//  WakeupAlarmRow.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//
import SwiftUI

struct WakeupAlarmRow: View {
    var wakeupalarm: WakeupAlarm
    @Binding var editing : Bool
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                if editing {
                    Image(systemName: "minus.circle.fill").imageScale(.small).foregroundColor(.red)
                }
                HStack(alignment: .center,spacing: 1) {
                    Text(wakeupalarm.time).font(.largeTitle)
                    Text(wakeupalarm.apm).font(.body).padding([.top, .trailing], 5.0)
                }.padding(.leading, 0.0).frame(width: 135,height: 40 ,alignment: .leading)
                Text(wakeupalarm.date).font(.subheadline).foregroundColor(.gray).frame(width: 180,alignment: .leading)
            }.padding()
            Spacer()
            ChangeButton()
        }.padding()
    }
}

struct WakeupAlarmRow_Previews: PreviewProvider {
    @State static var test = true
    static var previews: some View {
        WakeupAlarmRow(wakeupalarm: wakeupalarmData[1],editing: $test).preferredColorScheme(.dark)
    }
}
