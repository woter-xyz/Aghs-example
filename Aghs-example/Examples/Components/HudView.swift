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
        hud.show(style: .default()) {
          DismissButton()
            .padding(50)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 10)
        }
      }
      .padding(50)
    }
  }
}

struct DismissButton: View {
  @EnvironmentObject var hud: Hud
  
  var body: some View {
    Button("Dismiss") {
      hud.hide(.spring())
    }
  }
}

struct HudView_Previews: PreviewProvider {
  static var previews: some View {
    HudView()
  }
}

struct ActivityIndicator: View {
  var body: some View {
    ProgressView()
      .font(.largeTitle)
  }
}
