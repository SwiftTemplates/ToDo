import SwiftUI

struct TaskList: View {
  var body: some View {
    List {
      ForEach(1..<21) { index in
        TaskRow(title: "Item \(index)")
        // Swipe right
          .swipeActions(edge: .leading) {
            // Done
            Button {
              print("User completed task")
            } label: {
              Label("Done", systemImage: "checkmark")
            }
            .tint(.green)
            // Edit
            Button {
              print("User edited task")
            } label: {
              Label("Edit", systemImage: "text.cursor")
            }
            .tint(.blue)
          }
        // Swipe left
          .swipeActions(edge: .trailing) {
            // Delete
            Button {
              print("User deleted task")
            } label: {
              Label("Delete", systemImage: "trash")
            }
            .tint(.red)
            // Pin
            Button {
              print("User pinned task")
            } label: {
              Label("Pin", systemImage: "pin")
            }
            .tint(.yellow)
          }
        
      }
    }
    .listStyle(.plain)
  }
}

struct TaskList_Previews: PreviewProvider {
  static var previews: some View {
    TaskList()
  }
}
