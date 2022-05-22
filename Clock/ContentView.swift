//
//  ContentView.swift
//  Clock
//
//  Created by fjx on 2022/3/31.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
            
        TabView {
            WorldClockView().tabItem {
                Label("World Clock", systemImage: "globe.americas")
            }
            AlarmView().tabItem {
                Label("Alarm", systemImage: "alarm")
            }
            StopwatchView().tabItem {
                Label("Stopwatch", systemImage: "stopwatch")
            }
            TimerView().tabItem {
                Label("Timer", systemImage: "timer")
            }
        }.accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().preferredColorScheme(.dark)
        }
    }
}
