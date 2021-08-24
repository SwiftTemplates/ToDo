import SwiftUI

struct TaskRow: View {
  var title: String
  
  var body: some View {
    HStack {
      Text(title)
        .fontWeight(.medium)
      
      Spacer()
    }
    .padding()
  }
}

struct TaskRow_Previews: PreviewProvider {
  static var previews: some View {
    TaskRow(title: "Task to complete")
      .previewLayout(.fixed(width: 300, height: 70))
  }
}
