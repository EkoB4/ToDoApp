//
//  ContentView.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ListView()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }.environmentObject(ListViewModel())
            profileTab()
                .tabItem {
                    Image(systemName: "house.fill")
                }
           addNewTask()
                .tabItem {
                    Image(systemName: "house.fill")
                }
           }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


