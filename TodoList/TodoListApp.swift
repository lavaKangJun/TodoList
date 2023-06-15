//
//  TodoListApp.swift
//  TodoList
//
//  Created by 강준영 on 2023/05/10.
//

import SwiftUI

/*
 MVVM Architecture 채택
 */

@main
struct TodoListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(.stack)
            .environmentObject(listViewModel)
        }
    }
}
