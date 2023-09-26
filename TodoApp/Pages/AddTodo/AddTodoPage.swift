//
//  AddTodoPage.swift
//  TodoApp
//
//  Created by yurii on 9/26/23.
//

import SwiftUI

struct AddTodoPage: View {
    @Binding var isShowingSheet: Bool
    @State private var todo: Todo? = Todo(title: "")
    
    @EnvironmentObject var repository: TodosRepository
    
    var body: some View {
        NavigationView{
            EditTodoView(todo: Binding($todo)!)
                .navigationTitle("Add Todo")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel", action: {
                            isShowingSheet.toggle()
                        }).foregroundColor(.red)
                    }
                    ToolbarItem {
                        Button ("Save", action: {
                            repository.addTodo(title: todo!.title)
                            isShowingSheet.toggle()
                        })
                        .fontWeight(.bold)
                        .disabled(todo?.title == "")
                    }
                }
        }
    }
}

struct EditTodoView: View {
    @Binding var todo: Todo
    
    var body: some View {
        Form {
            Section(
                content: {
                    TextField("Enter task name", text: $todo.title)
                },
                header: {Text("Title")}
            )
        }
        
    }
}

struct AddTodoPage_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoPage(isShowingSheet: Binding.constant(true))
    }
}
