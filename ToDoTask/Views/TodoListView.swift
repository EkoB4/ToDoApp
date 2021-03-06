  
//
//  ListView.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//
import SwiftUI

struct TodoListView: View {
    @EnvironmentObject var listViewModel : ListViewModel
    var body: some View {
        ZStack{
          /*  TabView{
                ContentView()
                    .tabItem {
                        Image(systemName:"house.fill")
                        Text("sa")
                    }
                addNewTask()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("as")
                    }
           */
            if listViewModel.items.isEmpty{
                Text("is empty")
            }else{
                List{
                    ForEach(listViewModel.items){ item in
                        rowList(value:item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform:listViewModel.deleteItem)
                    .onMove(perform:listViewModel.moveItem)
                }
            }

        }
        /*Navigation Bar items*/
         //.listStyle(PlainListStyle())
         .navigationBarTitle("To Do App")
         .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination:AddNewTaskView()))
        }
  }

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        TodoListView()
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
