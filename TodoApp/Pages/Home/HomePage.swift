//
//  HomePage.swift
//  TodoApp
//
//  Created by yurii on 9/25/23.
//

import SwiftUI

struct HomePage: View {
    @StateObject var todosRepository = TodosRepository()
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationView{
            TodosListView()
                .navigationTitle("Todos")
                .toolbar {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }.sheet(
                        isPresented: $isShowingSheet,
                        content: {AddTodoPage(isShowingSheet: $isShowingSheet)}
                    )
                }
        }.environmentObject(todosRepository)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
