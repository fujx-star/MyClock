//
//  StopwatchView.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

import SwiftUI

struct StopwatchView : View {
    
    @State private var current_state = TimeState.initial
    @State private var laplist = true
    var lap_color = Color(red:28/255,green: 28/255,blue: 28/255)
    var start_color = Color(red:6/255,green: 43/255,blue: 18/255)
    var stop_color = Color(red:48/255,green: 13/255,blue: 9/255)
    var unavailable_color = Color(red:91/255,green: 91/255,blue: 91/255)
    
    func unavailable() {}
    func lap() {
        withAnimation(.fade()) {
            laplist.toggle()
        }
    }
    func start() {
        current_state = TimeState.timing
    }
    func stop() {
        current_state = TimeState.pausing
    }
    func reset() {
        laplist = false
        current_state = TimeState.initial
    }
    
    var body: some View {
        
        VStack(spacing: 35) {
            switch current_state {
            case .initial:
                Text("00:00:00").font(.system(size: 75)).fontWeight(.thin).frame(width: 320, height: 100, alignment: .top)
                VStack(spacing: 0) {
                    HStack {
                        MyControlButton(buttontext: "Lap", backgroundcolor: lap_color, textcolor:unavailable_color, buttonaction: unavailable).frame(width: 104, height: 104)
                        Spacer()
                        MyControlButton(buttontext: "Start", backgroundcolor: start_color, textcolor: .green, buttonaction: start).frame(width: 100, height: 104, alignment: .trailing)
                    }.frame(width: 300, height: 104, alignment: .center)
                    if laplist {
                        LapList().frame(width: 320, height: 170, alignment: .center)
                    }
                }
            case .timing:
                Text("00:06:53").font(.system(size: 75)).fontWeight(.thin).frame(width: 320, height: 100, alignment: .top)
                VStack(spacing: 0) {
                    HStack {
                        MyControlButton(buttontext: "Lap", backgroundcolor: lap_color, textcolor:.gray, buttonaction: lap).frame(width: 104, height: 104)
                        Spacer()
                        MyControlButton(buttontext: "Stop", backgroundcolor: stop_color, textcolor: .red, buttonaction: stop).frame(width: 104, height: 104)
                    }.frame(width: 300, height: 104, alignment: .top)
                    if laplist {
                        LapList().frame(width: 320, height: 170, alignment: .center)
                    }
                }
            case .pausing:
                Text("00:09:11").font(.system(size: 75)).fontWeight(.thin).frame(width: 320, height: 100, alignment: .top)
                VStack(spacing: 0) {
                    HStack {
                        MyControlButton(buttontext: "Reset", backgroundcolor: lap_color, textcolor:.gray, buttonaction: reset).frame(width: 104, height: 104)
                        Spacer()
                        MyControlButton(buttontext: "Start", backgroundcolor: start_color, textcolor: .green, buttonaction: start).frame(width: 100, height: 104)
                    }.frame(width: 300, height: 104, alignment: .top)
                    if laplist {
                        LapList()
                            .frame(width: 320, height: 170, alignment: .center)
                            .transition(.moveAndFade)
                    }
                }
            }
        }.frame(width: 310, height: 400, alignment: .top)
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView().preferredColorScheme(.dark)
    }
}

