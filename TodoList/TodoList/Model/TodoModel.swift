//
//  TodoModel.swift
//  TodoList
//
//  Created by kaikim on 2023/07/05.
//

import Foundation


struct TodoModel: Identifiable{
    var id : UUID = UUID()
    var name: String
    var date: String
//    var trueFalse: Bool = False
        
        
        
    
}

//
//
//extension TodoModel:Identifiable {
//    
//    
//    var id: UUID  {
//        
//        return UUID()
//    }
//    
//}
