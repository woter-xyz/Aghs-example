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
        Text("DisplayName: \(Aghs.AppInfo.displayName ?? "?")")
        Text("Version: \(Aghs.AppInfo.version ?? "?")")
        Text("Build Version: \(Aghs.AppInfo.buildVersion ?? "?")")
      }
    }
  }
}

struct AppInfoView_Previews: PreviewProvider {
  static var previews: some View {
    AppInfoView()
  }
}
