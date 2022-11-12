//
//  TaskExView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI

struct TaskExView: View {
  var body: some View {
    SampleList(data: [
      .init(title: "TaskSleep", content: TaskSleep())
    ])
  }
  
  struct TaskSleep: View {
    @State private var text = "Sleeping..."
    
    var body: some View {
      Text(text)
        .task {
          try? await Task.ax.sleep(seconds: 2)
          text = "Time's up!"
        }
    }
  }
}

struct TaskExView_Previews: PreviewProvider {
  static var previews: some View {
    TaskExView()
  }
}
