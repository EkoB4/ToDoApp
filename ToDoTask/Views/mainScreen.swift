//
//  mainScreen.swift
//  ToDoTask
//
//  Created by VB on 18.11.2021.
//

import SwiftUI

struct mainScreen: View {
    var body: some View {
        TabView{
           // LinearGradient(colors: [.blue, Color("MainScreen")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            /*GeometryReader{ geo in
                frame(width: geo.size.width*0.5, height: geo.size.height*0.6)
                    .foregroundColor(Color.gray)
            }*/
                mainScreen()
                    .tabItem {
                        Image(systemName: "note.text.badge.plus")
                            .foregroundColor(.black)
                            .background(Color.red)
                }
          }
        }
    }
struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        mainScreen()
    }
}
