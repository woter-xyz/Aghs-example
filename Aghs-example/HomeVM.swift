//
//  HomeVM.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import Foundation

final class HomeVM: ObservableObject {
  @Published var listData: [HomeItemModel] = [
    .init(name: "UI", children: [
      .init(name: "Tip", route: .tip),
      .init(name: "Hud", route: .hud)
    ]),
    .init(name: "ax/Extensions", children: [
      .init(name: "CGFloat", route: .cgfloatEx),
      .init(name: "Task", route: .taskEx),
      .init(name: "UIScreen", route: .uiscreenEx),
    ]),
    .init(name: "ax/ViewModifiers", children: [
      .init(name: "Conditional", route: .conditional),
      .init(name: "RoundCorner", route: .roundCorner),
      .init(name: "CustomNavBackButton", route: .customNavBackButton),
    ]),
    .init(name: "Utils", children: [
      .init(name: "printLog", route: .printLog),
      .init(name: "dismissKeyboard", route: .dismissKeyboard)
    ])
  ]
}
