//
//  SheetButton.swift
//  Clock
//
//  Created by fjx on 2022/3/30.
//

import SwiftUI

struct SheetButton: View {
    @State private var show_sheet = false
    var buttonbackgroundcolor = Color(red:28/255,green: 28/255,blue: 28/255)
    var mycolor = Color(red:91/255,green: 91/255,blue: 91/255)
    var option_color = Color(red:155/255,green: 155/255,blue: 155/255)
    func unavailable() {}
    func closesheet() {
        show_sheet = false
    }
    
    var body: some View {
        Button(action: {
            show_sheet.toggle()
        }) {
            Text("When Timer Ends").foregroundColor(.white).frame(width: 150, alignment: .center)
            Spacer()
            HStack(spacing: 6) {
                Text("Radar").foregroundColor(option_color)
                Image(systemName: "chevron.right").imageScale(.small).foregroundColor(mycolor)
            }
            .frame(width: 80.0, alignment: .center)
        }
        .font(.subheadline)
        .frame(width: 280, height: 40).background(buttonbackgroundcolor).cornerRadius(10)
        .sheet(isPresented: $show_sheet) {
            NavigationView {
                List(rings) { ring in
                    Button(action: {unavailable()}) {
                        Text(ring.type).foregroundColor(.white)
                    }
                }.frame(width: 320)
                    .navigationBarTitle("When Timer Ends",displayMode: .inline)
                    .navigationBarItems(trailing: Button(action:closesheet){
                    Text("Set").foregroundColor(.orange)
                })
                    .navigationBarItems(leading: Button(action:closesheet){
                        Text("Cancel").foregroundColor(.orange)
                    })
                    .frame(width:365)
            }.edgesIgnoringSafeArea(.top).preferredColorScheme(.dark)
        }
    }
}

struct SheetButton_Previews: PreviewProvider {
    
    static var previews: some View {
        SheetButton().preferredColorScheme(.dark)
    }
}

