//
//  OtherAlarmRow.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

import SwiftUI

struct OtherAlarmRow: View {
    var otheralarm: OtherAlarm
    @Binding var editing: Bool
    @State private var isOn = true

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                if editing {
                    Image(systemName: "minus.circle.fill").imageScale(.small).foregroundColor(.red)
                }
                HStack(alignment: .center,spacing: 1) {
                    Text(otheralarm.time).font(.largeTitle)
                    Text(otheralarm.apm).font(.body).padding([.top, .trailing], 5.0)
                }.padding(.leading, 0.0).frame(width: 135,height: 40 ,alignment: .leading)
                Text(otheralarm.description).font(.subheadline).foregroundColor(.gray).frame(width: 180,alignment: .leading).multilineTextAlignment(.leading)
            }.padding()
            Spacer()
            Toggle(isOn: $isOn){
                
            }.padding().frame(alignment: .leading)
        }.padding()
    }
}

struct OtherAlarmRow_Previews: PreviewProvider {
    @State static var test = true
    
    static var previews: some View {
        OtherAlarmRow(otheralarm: otheralarmData[1],editing: $test).preferredColorScheme(.dark)
    }
}
