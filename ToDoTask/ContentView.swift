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
                        Image(systemName: "note.text.badge.plus")
                    }.environmentObject(ListViewModel())
           addNewTask()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                }
            profileTab()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                }
           }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



