//
//  RoundCorner.swift
//  Aghs-example
//
//  Created by Bruce on 2023/2/16.
//

import SwiftUI
import Aghs

struct RoundCorner: View {
  var body: some View {
    Color.blue
      .frame(width: 200, height: 100)
      .ax.roundedCorners(30, corners: [.topLeft, .bottomRight])
  }
}

struct RoundCorner_Previews: PreviewProvider {
  static var previews: some View {
    RoundCorner()
  }
}
