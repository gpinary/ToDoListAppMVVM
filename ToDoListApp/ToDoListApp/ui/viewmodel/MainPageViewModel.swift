//
//  MainPageViewModel.swift
//  ToDoListApp
//
//  Created by Gökçe Pınar Yıldız on 10.08.2023.
//

import Foundation
import RxSwift

class MainPageViewModel{
    var trepo = TodoDaoRepository()
    var todoList = BehaviorSubject<[Todo]>(value: [Todo]())
    
    init(){
        todoList = trepo.TodoList
    }
    
    func delete(todo_id:Int) {
        trepo.delete(todo_id: todo_id)
    }
    func search(searchKey:String){
        trepo.search(searchKey: searchKey)
    }
    func loadTodo() {
        trepo.loadTodo()
    }
}
