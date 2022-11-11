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
      Color.cyan
        .frame(
          width: 100.widthRatio(),
          height: 100.heightRatio()
        )
    }
  }
}

struct CGFloatExView_Previews: PreviewProvider {
  static var previews: some View {
    CGFloatExView()
  }
}
