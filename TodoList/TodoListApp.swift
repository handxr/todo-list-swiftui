//
//  TodoListApp.swift
//  TodoList
//
//  Created by Macbook on 31/7/23.
//

import SwiftUI

 
@main
struct TodoListApp: App {
    
    @StateObject var listviewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listviewModel)
        }
    }
}
