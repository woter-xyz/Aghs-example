//
//  PrintLogView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI
import Aghs

struct PrintLogView: View {
  var body: some View {
    printLog("Hello")
    return Text("See the console")
  }
}

struct PrintLogView_Previews: PreviewProvider {
  static var previews: some View {
    PrintLogView()
  }
}
