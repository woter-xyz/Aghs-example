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
  @StateObject private var hud = Hud()
  @StateObject private var networkStatusMonitor = NetworkStatusMonitor()
  
  init() {
    Hud.defaultStyle = .default(background: Color.yellow.opacity(0.35))
  }
  
  var body: some Scene {
    WindowGroup {
      HomeView()
        .ax.hud(hud)
        .environmentObject(networkStatusMonitor)
    }
  }
}
