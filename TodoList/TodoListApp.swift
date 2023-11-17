//
//  TodoListApp.swift
//  TodoList
//
//  Created by Emine Büşra Yıldız on 13.11.2023.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
            
        }
    }
}
