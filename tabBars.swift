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
            AddNewTaskView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            NavigationView{
                TodoListView()
            }
        }
    }
}

struct tabBars_Previews: PreviewProvider {
    static var previews: some View {
        tabBars()
    }
}
