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
            NavigationView{
            TodoListView()
                .tabItem {
                    Image(systemName: "house")
                }
            //.environmentObject(ListViewModel())
            ProfileTabView()
                .tabItem {
                    Label("Creator",systemImage: "person.crop.circle.fill")
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ListViewModel())
    }
}
