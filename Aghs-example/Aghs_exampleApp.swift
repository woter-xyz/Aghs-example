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
  
  var body: some Scene {
    WindowGroup {
      HomeView()
        .environmentObject(networkStatusMonitor)
        .ax.hudManager()
    }
  }
}
