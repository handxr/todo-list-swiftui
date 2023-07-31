//
//  ListRowView.swift
//  TodoList
//
//  Created by Macbook on 31/7/23.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red).onTapGesture {
                    withAnimation(.linear){
                        listViewModel.updateItem(item: item)
                    }
                }
            
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}


struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "First item!", isCompleted: false)
    
    static var previews: some View {
        ListRowView(item: item1)
    }
}
