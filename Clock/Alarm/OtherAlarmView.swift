//
//  OtherAlarmView.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

import SwiftUI

struct OtherAlarmView : View {
    
    @Binding var editing: Bool
    
    var body: some View {
        Section(header: Text("Other").font(.headline).foregroundColor(.white)
                    .padding(.leading, 15.0).frame(width: 150, height:50, alignment: .leading)) {
            OtherAlarmRow(otheralarm:otheralarmData[0],editing:$editing)
            OtherAlarmRow(otheralarm:otheralarmData[1],editing:$editing)
        }.padding().frame(width: 340, height: 60, alignment: .trailing)
    }
}
struct OtherAlarmView_Previews: PreviewProvider {
    @State static var test = true
    
    static var previews: some View {
        OtherAlarmView(editing:$test).preferredColorScheme(.dark)
    }
}

