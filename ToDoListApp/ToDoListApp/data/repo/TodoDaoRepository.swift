//
//  TodoDaoRepository.swift
//  ToDoListApp
//
//  Created by Gökçe Pınar Yıldız on 10.08.2023.
//

import Foundation
import RxSwift

class TodoDaoRepository {
    var TodoList = BehaviorSubject<[Todo]>(value: [Todo]())
    
    func save(todo_name: String) {
        print("Save todo: \(todo_name)")
    }
    func update(todo_id:Int,todo_name:String){
        print("Update todo: \(todo_id)-\(todo_name)")
    }
    func delete(todo_id:Int) {
        print("Delete todo:\(todo_id)")
    }
    func search(searchKey:String){
        print("Search todo: \(searchKey)")
    }
    func loadTodo() {
        var list = [Todo]()
        let t1 = Todo(todo_id: 1, todo_name: "Feed pet")
        let t2 = Todo(todo_id: 2, todo_name: "Tidy room")
        let t3 = Todo(todo_id: 3, todo_name: "Schedule a ZoomCall")
        
        list.append(t1)
        list.append(t2)
        list.append(t3)
        TodoList.onNext(list) //Trigger
    }
}
