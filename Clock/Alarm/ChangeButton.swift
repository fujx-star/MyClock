//
//  ChangeButton.swift
//  Clock
//
//  Created by fjx on 2022/3/30.
//

import SwiftUI

struct ChangeButton : View {
    
    var mycolor = Color(red:79/255,green: 85/255,blue: 4/255).opacity(0.3)
    
    var body: some View {
        Button(action: test) {
            Text("CHANGE").font(.subheadline).bold()
                .foregroundColor(.orange)
                .padding(.leading, 0.0)
                .frame(width: 90,height: 28,alignment: .center)
                .background(mycolor)
                .cornerRadius(30)
        }
    }
    
    func test() {}
}

struct ChangeButton_Previews : PreviewProvider {
    static var previews: some View {
        ChangeButton().preferredColorScheme(.dark)
    }
}
