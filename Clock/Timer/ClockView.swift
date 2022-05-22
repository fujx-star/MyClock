//
//  ClockView.swift
//  Clock
//
//  Created by fjx on 2022/3/29.
//

import SwiftUI

struct ClockView : View {
    
    @State private var curr_time = Date()
    @Binding var curr_state : TimeState
    var bellcolor = Color.gray
    var bellcolor_opacity = Color(red:37/255,green: 37/255,blue: 37/255)
    var time_timing = "0:59:59"
    var time_pausing = "0:30:32"
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1, hour: 0, minute: 0, second: 0)
        let endComponents = DateComponents(year: 2022, month: 1, day: 1, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()

    
    var body: some View {
        switch curr_state {
        case .initial:
            
            DatePicker(
                "",
                 selection: $curr_time,
                 in: dateRange,
                displayedComponents: [.hourAndMinute])
                .labelsHidden()
                .transformEffect(.init(scaleX: 1.5, y: 1.5))
                .padding(.trailing, 47.0)
                .frame(width: 200,height:100, alignment: .center)
        case .timing:
            TimerClock(time:time_timing,bellcolor: bellcolor)
        case .pausing:
            TimerClock(time:time_pausing,bellcolor: bellcolor_opacity)
        }
    }
    
}

struct ClockView_Previews: PreviewProvider {
    @State static var test = TimeState.initial
    static var previews: some View {
        ClockView(curr_state: $test).preferredColorScheme(.dark)
    }
}
