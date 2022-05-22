//
//  LapList.swift
//  Clock
//
//  Created by fjx on 2022/3/29.
//

import SwiftUI

struct LapList : View {
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
    }
 
    var body: some View {
        List {
            HStack {
                Text("Lap 3")
                Spacer()
                Text("00:01.62")
            }.padding().font(.callout).foregroundColor(.white).frame(width: 265, height: 30, alignment: .center)
            HStack {
                Text("Lap 2")
                Spacer()
                Text("00:03.36")
            }.padding().font(.callout).foregroundColor(.green).frame(width: 265, height: 30, alignment: .center)
            HStack {
                Text("Lap 1")
                Spacer()
                Text("00:03.56")
            }.padding().font(.callout).foregroundColor(.red).frame(width: 265, height: 30, alignment: .center)
        }.edgesIgnoringSafeArea(.leading)
    }
    
}

struct LapList_Previews: PreviewProvider {
    static var previews: some View {
        LapList().preferredColorScheme(.dark)
    }
}

