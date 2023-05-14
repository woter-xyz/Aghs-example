//
//  Aghs_exampleApp.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI
import Aghs

@main
struct Aghs_exampleApp: App {
  @StateObject private var networkStatusMonitor = NetworkStatusMonitor()
  @StateObject private var hud: Hud = .init()
  
  var body: some Scene {
    WindowGroup {
      HomeView()
        .environmentObject(networkStatusMonitor)
        .ax.initHud(hud, defaultStyle: .custom(
          background: AnyView(Color.orange.opacity(0.6)),
          interactiveHide: false,
          alignment: .top,
          transition: .move(edge: .top)
        ))
    }
  }
}
