//
//  HomeVM.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import Foundation

final class HomeViewModel: ObservableObject {
  @Published var listData: [HomeItemModel] = [
    .init(name: "UI", children: [
      .init(route: .toast),
      .init(route: .hud)
    ]),
    .init(name: "ax/Extensions", children: [
      .init(route: .cgfloatEx),
      .init(route: .taskEx),
      .init(route: .uiscreenEx),
    ]),
    .init(name: "ax/ViewModifiers", children: [
      .init(route: .conditional),
      .init(route: .roundCorner),
      .init(route: .customNavBackButton),
    ]),
    .init(name: "Utils", children: [
      .init(route: .debugPrint),
      .init(route: .dismissKeyboard)
    ])
  ]
}
