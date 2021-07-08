//
//  TaskList.swift
//  ToDo
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct TaskList: View {
    var body: some View {
        List {
            ForEach(1..<5) { index in
                TaskItem(isChecked: false, title: "Item \(index)")
            }
            ForEach(5..<11) { index in
                TaskItem(isChecked: true, title: "Item \(index)")
            }
            //TaskItem(isChecked: true, title: "Completed")
            //TaskItem(isChecked: false, title: "To complete")
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
