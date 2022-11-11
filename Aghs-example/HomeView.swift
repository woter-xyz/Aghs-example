//
//  HomeView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI

struct HomeView: View {
  @StateObject private var router = Router.shared
  @StateObject private var vm = HomeVM()
  
  var body: some View {
    NavigationStack(path: $router.path) {
      List(vm.listData, children: \.children) { item in
        ListItemView(itemData: item)
      }
      .navigationTitle("Aghs Example")
      .navigationDestination(for: Route.self) { route in
        route.destination
          .navigationBarTitleDisplayMode(.inline)
      }
    }
  }
}

fileprivate struct ListItemView: View {
  let itemData: HomeItemModel
  
  var body: some View {
    if itemData.children == nil {
      NavigationLink(value: itemData.route) {
        Text(itemData.name)
      }
    } else {
      Text(itemData.name)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
