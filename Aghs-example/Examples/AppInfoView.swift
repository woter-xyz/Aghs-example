//
//  AppInfoView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI
import Aghs

struct AppInfoView: View {
  var body: some View {
    SampleList(data: [
      .init(title: "AppInfo", content: Info())
    ])
  }
  
  struct Info: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("DisplayName: \(AppInfo.displayName ?? "?")")
        Text("Version: \(AppInfo.version ?? "?")")
        Text("Build Version: \(AppInfo.buildVersion ?? "?")")
      }
    }
  }
}

struct AppInfoView_Previews: PreviewProvider {
  static var previews: some View {
    AppInfoView()
  }
}
