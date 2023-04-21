//
//  CustomNavBackButton.swift
//  Aghs-example
//
//  Created by Bruce on 2023/3/29.
//

import SwiftUI

struct CustomNavBackButton: View {
  
  var body: some View {
    Text("Hello")
      .ax.customNavBackButton {
        Image(systemName: "arrow.backward")
      }
  }
}

struct CustomNavBackButton_Previews: PreviewProvider {
  static var previews: some View {
    CustomNavBackButton()
  }
}
