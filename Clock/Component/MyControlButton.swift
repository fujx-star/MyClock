//
//  MyControlButton.swift
//  Clock
//
//  Created by fjx on 2022/3/30.
//

import SwiftUI

struct MyControlButton : View {
    
    var buttontext : String
    var backgroundcolor : Color
    var textcolor: Color
    var buttonaction: ()->Void
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(backgroundcolor, lineWidth: 2)
                .frame(width: 85, height:85)
            Button(action: buttonaction) {
                Text(buttontext).foregroundColor(textcolor)
            }
            .padding(EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30))
            .background(backgroundcolor)
            .clipShape(Circle())
        }
    }
}
    
struct MyControlButton_Previews: PreviewProvider {
    static func test() {}
    static var previews: some View {
        MyControlButton(buttontext: "Reset", backgroundcolor: .orange, textcolor: .gray, buttonaction: test).preferredColorScheme(.dark)
    }
}
