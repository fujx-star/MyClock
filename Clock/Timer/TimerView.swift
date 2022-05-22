//
//  TimerView.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

import SwiftUI

struct TimerView : View {
    
    @State private var current_state:TimeState = TimeState.initial
    var cancel_color = Color(red:28/255,green: 28/255,blue: 28/255)
    var start_color = Color(red:6/255,green: 43/255,blue: 18/255)
    var pause_color = Color(red:50/255,green: 32/255,blue: 2/255)
    var unavailable_color = Color(red:91/255,green: 91/255,blue: 91/255)
    
    func unavailable() {}
    func cancel() {
        current_state = TimeState.initial
    }
    func start() {
        current_state = TimeState.timing
    }
    func pause() {
        current_state = TimeState.pausing
    }
    func resume() {
        current_state = TimeState.timing
    }

    var body: some View {
        VStack {
            
            ClockView(curr_state: $current_state)
            
            Spacer()
            
            VStack(spacing:0) {
                HStack {
                    switch current_state {
                    case .initial:
                        MyControlButton(buttontext: "Cancel", backgroundcolor: cancel_color, textcolor:unavailable_color, buttonaction: unavailable).frame(width: 125, height: 125, alignment: .leading)
                        Spacer()
                        MyControlButton(buttontext: "Start", backgroundcolor: start_color, textcolor: .green, buttonaction: start).frame(width: 125, height: 125, alignment: .trailing)
                    case .timing:
                        MyControlButton(buttontext: "Cancel", backgroundcolor: cancel_color, textcolor:.gray, buttonaction: cancel).frame(width: 125, height: 125)
                        Spacer()
                        MyControlButton(buttontext: "Pause", backgroundcolor: pause_color, textcolor: .orange, buttonaction: pause).frame(width: 125, height: 125)
                    case .pausing:
                        MyControlButton(buttontext: "Cancel", backgroundcolor: cancel_color, textcolor:.gray, buttonaction: cancel).frame(width: 125, height: 125)
                        Spacer()
                        MyControlButton(buttontext: "Resume", backgroundcolor: start_color, textcolor: .green, buttonaction: resume).frame(width: 125, height: 125)
                    }
                }
                SheetButton()
                
            }.frame(width: 290, height: 230, alignment: .top)
            
        }.frame(width: 310, height: 400, alignment: .top)
        
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView().preferredColorScheme(.dark)
    }
}


