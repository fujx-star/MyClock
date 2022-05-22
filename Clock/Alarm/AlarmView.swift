//
//  AlarmView.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

import SwiftUI

struct AlarmView : View {
    
    @State private var editing = false
    
    func unavailable() {}
    
    var body: some View {
        
        NavigationView {
            List {
                WakeupAlarmView(editing: $editing)
                OtherAlarmView(editing: $editing)
            }
            .navigationBarTitle("Alarm")
                .navigationBarItems(trailing: Button(action: unavailable){
                Image(systemName: "plus").foregroundColor(.orange)
            })
                .navigationBarItems(leading: Button(action: {
                    withAnimation(.ripple()) {
                        editing.toggle()
                    }
                }){
                    Text("Edit").foregroundColor(.orange)
                })
                .frame(width:370)
        }
        .edgesIgnoringSafeArea(.top)
    }
    
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView().preferredColorScheme(.dark)
    }
}




