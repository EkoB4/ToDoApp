//
//  itemModel.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import Foundation

struct itemModel : Identifiable {
    let id : String = UUID().uuidString
    let title : String
    let isFinished : Bool
}
