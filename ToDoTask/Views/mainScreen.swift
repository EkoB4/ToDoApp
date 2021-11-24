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
            tabItem {
                Image("note.text.badge.plus")
            }
            Text("sa")
        }
        }
    }
struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        mainScreen()
    }
}
