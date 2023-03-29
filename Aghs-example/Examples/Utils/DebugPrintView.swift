//
//  PrintLogView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI
import Aghs

struct DebugPrintView: View {
  var body: some View {
    Aghs.print("Hello")
    return Text("See the console")
  }
}

struct PrintLogView_Previews: PreviewProvider {
  static var previews: some View {
    DebugPrintView()
  }
}
