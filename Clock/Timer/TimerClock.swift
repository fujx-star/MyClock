//
//  TimerClock.swift
//  Clock
//
//  Created by fjx on 2022/3/30.
//

import SwiftUI

struct TimerClock: View {
    var time: String
    var bellcolor : Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.orange, lineWidth: 5)
                .frame(width: 250, height:250)
            VStack {
                Text(time).font(.system(size: 60)).fontWeight(.thin)
                HStack {
                    Image(systemName: "bell.fill")
                    Text("11:45")
                }.foregroundColor(bellcolor)
            }
        }.frame(width: 130, alignment: .center)
            
    }
}

struct TimerClock_Previews: PreviewProvider {
    static var test_color = Color(red:37/255,green: 37/255,blue: 37/255)
    static var test_time = "2:43:54"
    
    static var previews: some View {
        TimerClock(time:test_time,bellcolor:test_color).preferredColorScheme(.dark)
    }
}
