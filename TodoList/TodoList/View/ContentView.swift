//
//  ContentView.swift
//  TodoList
//
//  Created by kaikim on 2023/07/05.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var todoListStore: TodoViewModel =  TodoViewModel()
    @State var list: String = ""
    @State var date: String = ""
    
//    @State var trueFalse: Bool  = false
    
    
    
    var body: some View {
        
        NavigationStack{
            VStack{
                
                
                List(todoListStore.todoList) {
                    list in
                    VStack{
                        
                        HStack{
                            
                    
                            Button {
                               
                                
                                
                                
                            } label: {
                                    Image(systemName: "checkmark.square")
                            }.buttonStyle(.plain)
                            
                            Text("\(list.name)")
                            Spacer()
                            
                            Button {
                                todoListStore.completeButton(list)
                                print("이건왜삭제")
                            } label: {
                                Text("완료")
                            }
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                 
                    
                    
                    
                }
                
                //                VStack{
                //                    TextField("할일", text: $list)
                //                        .padding()
                //                    TextField("날짜", text: $date)
                //                        .padding()
                //                    Button {
                //                        todoListStore.addList(name: list, date: date)
                //                        list = ""
                //                        date = ""
                //
                //                    } label: {
                //                        Text("추가하기")
                //                    }
                //                }
            }.navigationTitle("투두리스트")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        NavigationLink {
                            TodoDetailView(todoListStore: todoListStore)
                            
                        } label: {
                            Image(systemName: "plus")
                        }
                        
                        
                        
                    }
                }
        }}}





//                        Button {
//                            TodoDetailView()
//                        } label: {
//                            Image(systemName: "plus")
//                        }





// }.navigationBarTitle("Tutorials")

//
//
//
//                .navigationBarItems(trailing:
//                                        Button(action: {
//                    print("Edit button pressed...")
//                }) {
//                    Text("Edit")
//                })

//                .navigationTitle("투두리스트")
//                    .toolbar {
//                        ToolbarItem(placement: .navigationBarTrailing) {
//                            Button {
//                                print("d")
//                            } label: {
//                                Text("추가하기")
//                            }
//
//                        }
//
//                    }
//





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

