//
//  WakeupAlarmView.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

import SwiftUI

struct WakeupAlarmView : View {
    
    @Binding var editing: Bool
    
    var body: some View {
        Section(header: HStack(spacing: 2) {
            Image(systemName: "bed.double")
            Text("Sleep | Wake up").font(.headline).foregroundColor(.white)
        }.padding(.leading, 15.0).frame(width: 180, height:50, alignment: .leading))
        {
            WakeupAlarmRow(wakeupalarm: wakeupalarmData[0],editing:$editing)
            WakeupAlarmRow(wakeupalarm: wakeupalarmData[1],editing:$editing)
        }.padding().frame(width: 340, height: 60, alignment: .trailing)
    }
}
struct WakeupAlarmView_Previews: PreviewProvider {
    
    @State static var test = true
    
    static var previews: some View {
        WakeupAlarmView(editing: $test).preferredColorScheme(.dark)
    }
}

