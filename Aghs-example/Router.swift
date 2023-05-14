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
  case dismissKeyboard
  case hud
  case conditional
  case roundCorner
  case debugPrint
  case customNavBackButton
  case networkStatus
  case viewStatus
  
  @ViewBuilder var destination: some View {
    switch self {
    case .dismissKeyboard:
      DismissKeyboardView()
    case .hud:
      HudView()
    case .conditional:
      ConditionalView()
    case .roundCorner:
      RoundCorner()
    case .debugPrint:
      DebugPrintView()
    case .customNavBackButton:
      CustomNavBackButton()
    case .networkStatus:
      NetworkStatusView()
    case .viewStatus:
      MyView(viewModel: .init())
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

