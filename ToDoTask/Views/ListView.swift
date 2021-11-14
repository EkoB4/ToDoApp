//
//  ListView.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel : ListViewModel
    var body: some View {
            List{
                ForEach(listViewModel.items){ item in
                    rowList(value:item)
                }
                .onDelete(perform:listViewModel.deleteItem)
                .onMove(perform:listViewModel.moveItem)
            }/*Navigation Bar items*/
            //.listStyle(PlainListStyle())
            .navigationBarTitle("To Do App")
            .navigationBarItems(
                leading : EditButton(),
                trailing:NavigationLink("Add",destination: addNewTask()))
            }
 
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }
        .environmentObject(ListViewModel())
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
