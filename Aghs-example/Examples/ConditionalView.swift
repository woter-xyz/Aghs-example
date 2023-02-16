//
//  ConditionalView.swift
//  Aghs-example
//
//  Created by zzzwco on 2022/11/12.
//

import SwiftUI
import Aghs

struct ConditionalView: View {
  private let flag = Bool.random()
  
  var body: some View {
    VStack {
      Text("if")
        .ax_if(Bool.random()) { view in
          VStack {
            Text("Hello")
            view.foregroundColor(.purple)
          }
        }
        .font(.title)
      
      Text("ifLet")
        .ax_ifLet(Bool.random() ? Color.orange : nil) { view, value in
          HStack {
            Text("Hello")
            view.foregroundColor(value)
          }
        }
        .font(.subheadline)
    }
  }
}

struct ConditionalView_Previews: PreviewProvider {
  static var previews: some View {
    ConditionalView()
  }
}
