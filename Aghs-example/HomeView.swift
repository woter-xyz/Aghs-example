//
//  HomeView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI
import Aghs

struct HomeView: View {
  @StateObject private var router = Router()
  @StateObject private var vm = HomeViewModel()
  
  var body: some View {
    NavigationStack(path: $router.path) {
      List(vm.listData, children: \.children) { item in
        ListItemView(itemData: item)
      }
      .navigationTitle("Aghs Example")
      .navigationDestination(for: Route.self) { route in
        route.destination
        #if os(iOS)
          .navigationBarTitleDisplayMode(.inline)
        #endif
      }
    }
    .environmentObject(router)
  }
}

fileprivate struct ListItemView: View {
  let itemData: HomeItemModel
  
  var body: some View {
    if itemData.children == nil {
      NavigationLink(value: itemData.route) {
        Text(itemData.displayName)
      }
    } else {
      Text(itemData.displayName)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
