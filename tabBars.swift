//
//  tabBars.swift
//  ToDoTask
//
//  Created by VB on 25.11.2021.
//

import SwiftUI

struct tabBars: View {
    var body: some View {
        TabView{
            Text("sa")
            addNewTask()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            NavigationView{
                ListView()
            }
        }
    }
}

struct tabBars_Previews: PreviewProvider {
    static var previews: some View {
        tabBars()
    }
}
