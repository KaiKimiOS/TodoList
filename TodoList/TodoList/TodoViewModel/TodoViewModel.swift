//
//  TodoViewModel.swift
//  TodoList
//
//  Created by kaikim on 2023/07/05.
//

import Foundation

class TodoViewModel: ObservableObject {
    
   
    @Published var todoList: [TodoModel]

    
    init() {
        
        self.todoList = [
            TodoModel(name: "수업듣기", date: "2023-07-05"),
            TodoModel(name: "저녁먹기", date: "2023-07-05")
            
            
        ]
    }
    
    
    
    func addList(name:String, date:String) {
        let todo: TodoModel = TodoModel(name: name, date: date)
        todoList.append(todo)
    }
    
    func completeButton(_ todo:TodoModel) {
        
        todoList.removeAll(where: { $0.id == todo.id})
        
    }
   

    
}



