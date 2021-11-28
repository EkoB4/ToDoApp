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
            TodoListView()
                .tabItem {
                    Label("Add Note",systemImage: "note.text")
                }
            //.environmentObject(ListViewModel())
            ProfileTabView()
                .tabItem {
                    Label("Creator",systemImage: "person.crop.circle.fill")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
