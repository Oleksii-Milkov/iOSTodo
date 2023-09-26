//
//  Todo.swift
//  TodoApp
//
//  Created by yurii on 9/25/23.
//

import Foundation

struct Todo: Hashable, Identifiable {
    let id: UUID
    var title: String
    var isDone: Bool
    
    init(
        id: UUID = UUID(),
        title: String,
        isDone: Bool = false
    ) {
        self.id = id
        self.title = title
        self.isDone = isDone
    }
}
