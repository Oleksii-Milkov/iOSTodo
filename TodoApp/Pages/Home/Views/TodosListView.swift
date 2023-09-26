//
//  TodosListView.swift
//  TodoApp
//
//  Created by yurii on 9/25/23.
//

import SwiftUI

struct TodosListView: View {
    @EnvironmentObject var todosRepository: TodosRepository
    
    var body: some View {
        List($todosRepository.todos) { $todo in
            Toggle(todo.title, isOn: $todo.isDone)
        }
    }
}
