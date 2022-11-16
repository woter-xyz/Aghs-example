//
//  HudView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/16.
//

import SwiftUI
import Aghs

struct HudView: View {
  @EnvironmentObject var hud: Hud
  
  var body: some View {
    VStack {
      Button("Show") {
        hud.show {
          VStack(spacing: 10) {
            Text("Some text...")
            DismissButton()
          }
          .padding(30)
          .background(Color.orange)
          .cornerRadius(10)
        }
      }
      .padding(50)
      Spacer()
    }
  }
}

struct DismissButton: View {
  @EnvironmentObject var hud: Hud
  
  var body: some View {
    Button("Dismiss") {
      hud.isPresented.toggle()
    }
  }
}

struct HudView_Previews: PreviewProvider {
  static var previews: some View {
    HudView()
  }
}
