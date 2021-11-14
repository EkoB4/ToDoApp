//
//  listViewModel.swift
//  ToDoTask
//
//  Created by VB on 14.11.2021.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var  items : [itemModel] = []
    
    init(){
        getItems()
    }
    func getItems(){
        let newItems = [
            itemModel(title:"first title", isFinished:true),
            itemModel(title:"second title", isFinished:true),
            itemModel(title:"third title", isFinished:true)]
            items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from : IndexSet , to : Int ){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title:String){
        let addNewItem = itemModel(title: title, isFinished: true)
        items.append(contentsOf: addNewItem)
        }
}
