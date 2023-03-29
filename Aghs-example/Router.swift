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
  
  static let shared = Router()
  
  private init() {}
}

public protocol Routable: Hashable {

  associatedtype D: View

  @ViewBuilder var destination: D { get }
}

enum Route {
  case tip
  case dismissKeyboard
  case hud
  case conditional
  case roundCorner
  case printLog
  case cgfloatEx
  case uiscreenEx
  case taskEx
  case customNavBackButton
}

extension Route: Routable {
  
  var destination: some View {
    switch self {
    case .tip:
      TipView()
    case .dismissKeyboard:
      DismissKeyboardView()
    case .hud:
      HudView()
    case .conditional:
      ConditionalView()
    case .roundCorner:
      RoundCorner()
    case .printLog:
      PrintLogView()
    case .cgfloatEx:
      CGFloatExView()
    case .uiscreenEx:
      UIScreenExView()
    case .taskEx:
      TaskExView()
    case .customNavBackButton:
      CustomNavBackButton()
    }
  }
}

