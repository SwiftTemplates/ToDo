//
//  TaskItem.swift
//  ToDo
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct TaskItem: View {
    @State var isChecked: Bool = false
    var title: String
    
    let doneBox = Symbol.done.rawValue
    let todoBox = Symbol.todo.rawValue
    
    func toggle() { isChecked = !isChecked }
    
    var body: some View {
        HStack {
            Image(systemName: isChecked ? doneBox : todoBox)
                .foregroundColor(.blue)
                .font(.system(size: 24))
                //.font(.headline.weight(.medium))
                //.font(.body.weight(.semibold))
            
            Text(title)
                //.font(.subheadline)
                .fontWeight(.medium)
            
            Spacer()
        }
        .padding()
        .onTapGesture { toggle() }
    }
}

struct TaskItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TaskItem(isChecked: true, title: "Item One")
                .previewLayout(.fixed(width: 300, height: 70))
            TaskItem(isChecked: false, title: "Item Two")
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
