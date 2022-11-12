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
  case conditional
  case printLog
  case cgfloatEx
  case uiscreenEx
  case taskEx
}

extension Route: Routable {
  
  var destination: some View {
    switch self {
    case .conditional:
      ConditionalView()
    case .printLog:
      PrintLogView()
    case .cgfloatEx:
      CGFloatExView()
    case .uiscreenEx:
      UIScreenExView()
    case .taskEx:
      TaskExView()
    }
  }
}

