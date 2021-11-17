//
//  listViewModel.swift
//  ToDoTask
//
//  Created by VB on 14.11.2021.
//

import Foundation
import UIKit
import SwiftUI

class ListViewModel : ObservableObject {
    @Published var  items : [itemModel] = [] {
        didSet{
      //      saveList()
        }
    }
    let itemsKey : String = "itemList"
    init(){
        getItems()
    }
    func getItems(){
      /*  let newItems = [
            itemModel(title:"first title", isFinished:true),
            itemModel(title:"second title", isFinished:true),
            itemModel(title:"third title", isFinished:true)]
            items.append(contentsOf: newItems)*/
        guard let data = UserDefaults.standard.data(forKey: itemsKey) else {return}
        guard let savedItems = try? JSONDecoder().decode([itemModel].self ,from: data) else {return}
        self.items = savedItems
    }
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from : IndexSet , to : Int ){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title:String){
        let addNewItem = itemModel(title: title, isFinished: true)
        items.append(addNewItem)
    }
    func updateItem(item: itemModel){
        // if let index = items.firstIndex{(existingItem) -> Bool in
          //  return existingItem.id == item.id
         //}{
    func saveList(){
            if let encodedData = try? JSONEncoder().encode(items){
                UserDefaults.standard.set(encodedData, forKey: "itemsList")
        }
   }
        if let index = items.firstIndex(where: { $0.id == item.id }){
            items[index] = itemModel(title: item.title, isFinished: !item.isFinished)
        }
    }
}
