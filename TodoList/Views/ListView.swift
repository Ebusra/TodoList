//
//  ListView.swift
//  TodoList
//
//  Created by Emine Büşra Yıldız on 13.11.2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @State var items : [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false)]
    
    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty{
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }else {
                List {
                    ForEach(listViewModel.items){item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                    }
                .listStyle(PlainListStyle())
            }
            
        }
        
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                    NavigationLink("Add", destination: AddView())
                            )
        }
}

#Preview {
    
    NavigationView{
        ListView()
    }
    .environmentObject(ListViewModel())
}

