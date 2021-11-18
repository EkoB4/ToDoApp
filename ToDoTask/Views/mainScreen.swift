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
            LinearGradient(colors: [.blue, Color("MainScreen")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            Text("House")
                .tabItem{
                   Image(systemName: "house")
                }
            Text("Af")
                .tabItem {
                    Image(systemName: "house")
                }
            }
        }
    }
struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        mainScreen()
    }
}
