//
//  TodoDetailView.swift
//  TodoList
//
//  Created by kaikim on 2023/07/05.
//

import SwiftUI

struct TodoDetailView: View {
    @Environment(\.dismiss) private var dismiss // 이전화면으로 이동하기
    @ObservedObject var todoListStore: TodoViewModel
    @State var list: String = ""
    @State var date: String = ""
   
    
    var body: some View {
        
        NavigationStack {
            VStack{
                TextField("할일", text: $list)
                    .padding()
                    
                TextField("날짜", text: $date)
                    .padding()
                Button {
                    todoListStore.addList(name: list, date: date)
                    list = ""
                    date = ""
                    dismiss()
                } label: {
                    Text("추가하기")
                }
            }
            Spacer()
            }.navigationTitle("추가하기")
            
        }
    }




//
//
//struct TodoDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationStack{
//            TodoDetailView(list: "ㅇ", date:"ㅇ")
//        }
//
//    }
//}
