//
//  mainScreenElements.swift
//  ToDoTask
//
//  Created by VB on 19.11.2021.
//

import SwiftUI

struct mainScreenElements: View {
    var body: some View {
        TabView{
        Text("sa")
                .tabItem{
                    Image(systemName: "trash.circle")
                    Text("Main")
                }
            ListView()
                .tabItem{
                    Image(systemName: "folder.circle.fill")
                    Text("second screen")
                }

        }
  }
}


struct mainScreenElements_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            mainScreenElements()
        }
    }
}
