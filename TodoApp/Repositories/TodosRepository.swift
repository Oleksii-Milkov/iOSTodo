//
//  TodosRepository.swift
//  TodoApp
//
//  Created by yurii on 9/26/23.
//

import Foundation

class TodosRepository: ObservableObject {
    @Published var todos = [Todo]()
    
    func addTodo(title: String) {
        todos.append(Todo(title: title))
    }
}
