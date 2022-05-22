//
//  WorldClockView.swift
//  Clock
//
//  Created by fjx on 2022/3/28.
//

import SwiftUI

struct WorldClockView: View {
    @State private var editing = false
    @State private var worldclocks = worldclockData
    
    func unavailable() {}
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.black
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            List(worldclocks) { worldclock in
                WorldClockRow(worldclock: worldclock, editing: editing, worldclocks: $worldclocks).padding().frame(width: 340, height: 60, alignment: .center)
            }.listRowSeparator(.hidden)
            .navigationBarTitle("WorldClock")
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
                .frame(width:365)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct WorldClockView_Previews: PreviewProvider {
    static var previews: some View {
        WorldClockView().preferredColorScheme(.dark)
    }
}



