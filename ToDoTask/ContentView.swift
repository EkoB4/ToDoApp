//
//  ContentView.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TabView{
            Text("Sa")
                .font(.title)
            imageStyle()
                
                ListView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("sa")
                    }
            }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct imageStyle : View{
    var body: some View{
            Image("profileIcon")
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.gray ,lineWidth: 4)
                }.shadow(radius: 4)
    }
}
