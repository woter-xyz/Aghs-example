//
//  HudView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/16.
//

import SwiftUI
import Aghs

struct HudView: View {
  @State private var isPresented = false
  @EnvironmentObject private var hud: Hud
  
  var body: some View {
    VStack(spacing: 30) {
      Button("Show 1") {
        hud.show {
          DismissButton()
        }
      }
      
      Button("Show 2") {
        hud.show(style: .default) {
          DismissButton()
        }
      }
      
      Button("Show 3 ") {
        hud.show(style: .custom) {
          DismissButton()
        }
      }
      
      Button("Show 4") {
        isPresented.toggle()
      }
    }
    .ax.hud(isPresented: $isPresented, style: .default) {
      DismissButton()
    }
  }
}

struct CustomHudStyle: HudStyle {
  var background: AnyView { AnyView(Color.teal.opacity(0.6)) }
  var interactiveHide: Bool { false }
  var alignment: Alignment { .bottom }
  var transition: AnyTransition { .opacity.combined(with: .move(edge: .bottom)) }
}

extension HudStyle where Self == CustomHudStyle {
  static var custom: CustomHudStyle {
    CustomHudStyle()
  }
}

struct DismissButton: View {
  @EnvironmentObject private var hud: Hud
  
  var body: some View {
    Button("Dismiss") {
      hud.hide()
    }
    .padding(50)
    .background(Color.white)
    .clipShape(RoundedRectangle(cornerRadius: 15))
    .shadow(radius: 10)
  }
}


struct DismissButton4: View {
  
  var body: some View {
    Button("Dismiss 4") {
      
    }
    .padding(50)
    .background(Color.orange)
    .clipShape(RoundedRectangle(cornerRadius: 15))
    .shadow(radius: 10)
  }
}
