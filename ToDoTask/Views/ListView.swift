//
//  ListView.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

struct ListView: View {
    @State var items : [itemModel] = [
        itemModel(title:"first title", isFinished:true),
        itemModel(title:"second title", isFinished:true),
        itemModel(title:"third title", isFinished:true)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(items){ item in
                    rowList(value:item)
                }
            }/*Navigation Bar items*/
            //.listStyle(PlainListStyle())
            .navigationBarTitle("To Do App")
            .navigationBarItems(
                leading : EditButton(),
                trailing:NavigationLink("Add",destination: addNewTask()))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }
    }
}

/*struct rowList : View {
    var body: some View{
        HStack{
            Image(systemName:"checkmark.circle.fill")
            Text("This is the first item")
            Spacer()
        }
    }
}*/
