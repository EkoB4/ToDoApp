//
//  rowList.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

struct rowList: View {
    @State var value : itemModel
    var body: some View {
        HStack{
            Image(systemName: value.isFinished ? "checkmark.circle.fill":"circle")
                .foregroundColor(Color(value.isFinished ? .green : .red))
        Text(value.title)
            Spacer()
    }
        .font(.title2)
        .padding(.vertical,5)
 }
}
struct rowList_Previews: PreviewProvider {
    static var firstItem = itemModel(title:"first item" , isFinished: false)
   static var secondItem = itemModel(title: "second item", isFinished: true)
   
    static var previews: some View {
        Group{
            rowList(value:firstItem)
            rowList(value:secondItem)
        }.previewLayout(.sizeThatFits)
    }
}


