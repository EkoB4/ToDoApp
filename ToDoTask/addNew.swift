//
//  addNew.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

struct addNewTask: View {
    @State var userText :String =  ""
    var body: some View {
        ScrollView{
            VStack{
            TextField("Add item ", text : $userText)
                .padding()
                .background(Color.gray.opacity(0.3 ))
                .cornerRadius(10)
                .frame(height:50)
                
                Button(action:{
                    
                },label:{
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .frame(height:50)
                        .frame(maxWidth:.infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
           }
        }
        .padding(10)
        .navigationBarTitle("Add Task")
    }
}

struct addNew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        addNewTask()
        }
    }
}
