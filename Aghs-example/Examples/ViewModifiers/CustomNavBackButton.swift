//
//  CustomNavBackButton.swift
//  Aghs-example
//
//  Created by Bruce on 2023/3/29.
//

import SwiftUI

#if canImport(UIKit)
struct CustomNavBackButton: View {
  
  var body: some View {
    Text("Hello")
      .ax.navBackButton {
        Image(systemName: "arrow.backward")
      }
  }
}

struct CustomNavBackButton_Previews: PreviewProvider {
  static var previews: some View {
    CustomNavBackButton()
  }
}
#endif
