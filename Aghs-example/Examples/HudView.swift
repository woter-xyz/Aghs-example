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
        hud.show(style: .tip(style: .default(), position: .bottom)) {
//          VStack(spacing: 10) {
//            Text("Some text...")
//            DismissButton()
//          }
//          .padding(30)
//          .background(Color.orange)
//          .cornerRadius(10)
          
//          ActivityIndicator()
          
          Text("Hello world!")
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(radius: 10)
        }
      }
      .padding(50)
      
      NavigationLink {
        Text("Hello")
      } label: {
        Text("Push")
      }
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
