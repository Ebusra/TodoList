//
//  ListView.swift
//  TodoList
//
//  Created by Emine Büşra Yıldız on 13.11.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            HStack{
                Image(systemName: "checkmark.circle")
            }
        }
        .navigationTitle("Todo List :D:D:D📝")
    }
}

#Preview {
    
    NavigationView{
        ListView()
    }
}
