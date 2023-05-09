//
//  NetworkStatusView.swift
//  Aghs-example
//
//  Created by Bruce on 2023/5/4.
//

import SwiftUI
import Aghs

struct NetworkStatusView: View {
  @EnvironmentObject private var networkStatusMonitor: NetworkStatusMonitor
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Network status: \(networkStatusMonitor.isConnected ? "🟢" : "🔴")")
      Text("Network type: \(networkType)")
    }
  }
  
  private var networkType: String {
    switch networkStatusMonitor.interfaceType {
    case .cellular:
      return "celluar"
    case .wifi:
      return "wifi"
    default:
      return "other"
    }
  }
}

struct NetworkStatusView_Previews: PreviewProvider {
  static var previews: some View {
    NetworkStatusView()
  }
}
