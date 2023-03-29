//
//  UIScreenExView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI
import Aghs

struct UIScreenExView: View {
  var body: some View {
    SampleList(data: [
      .init(title: "ScreenSize", content: ScreenSize())
    ])
  }
  
  struct ScreenSize: View {
    var body: some View {
      VStack(alignment: .leading) {
        #if os(iOS)
        Text("Screen width: \(UIScreen.ax.width)")
        Text("Screen height: \(UIScreen.ax.height)")
        #endif
      }
    }
  }
}

struct UIScreenExView_Previews: PreviewProvider {
  static var previews: some View {
    UIScreenExView()
  }
}
