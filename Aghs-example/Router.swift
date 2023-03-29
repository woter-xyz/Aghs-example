//
//  Router.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import Foundation
import SwiftUI

public final class Router: ObservableObject {
  @Published var path: [Route] = []
      
  func to(_ route: Route) {
    path.append(route)
  }
}

enum Route: String, Hashable {
  case toast
  case dismissKeyboard
  case hud
  case conditional
  case roundCorner
  case debugPrint
  case cgfloatEx
  case uiscreenEx
  case taskEx
  case customNavBackButton
  
  @ViewBuilder var destination: some View {
    switch self {
    case .toast:
      ToastView()
    case .dismissKeyboard:
      #if canImport(UIKit)
      DismissKeyboardView()
      #else
      platformTipView
      #endif
    case .hud:
      HudView()
    case .conditional:
      ConditionalView()
    case .roundCorner:
      #if canImport(UIKit)
      RoundCorner()
      #else
      platformTipView
      #endif
    case .debugPrint:
      DebugPrintView()
    case .cgfloatEx:
      CGFloatExView()
    case .uiscreenEx:
      UIScreenExView()
    case .taskEx:
      TaskExView()
    case .customNavBackButton:
      #if canImport(UIKit)
      CustomNavBackButton()
      #else
      platformTipView
      #endif
    }
  }
  
  private var platformTipView: some View {
    var platform = "iOS"
    #if os(iOS)
    platform = "macOS"
    #endif
    return Text("Only available for \(platform)").foregroundColor(.secondary)
  }
}

