//
//  CGFloatExView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI

struct CGFloatExView: View {
  var body: some View {
    SampleList(data: [
      .init(title: "SizeRatio", content: SizeRatio())
    ])
  }
  
  struct SizeRatio: View {
    var body: some View {
      #if os(iOS)
      Color.cyan
        .frame(
          width: 100.widthRatio(),
          height: 100.heightRatio()
        )
      #endif
    }
  }
}

struct CGFloatExView_Previews: PreviewProvider {
  static var previews: some View {
    CGFloatExView()
  }
}
