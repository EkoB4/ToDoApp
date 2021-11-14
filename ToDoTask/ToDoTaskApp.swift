//
//  ToDoTaskApp.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

@main
struct ToDoTaskApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
