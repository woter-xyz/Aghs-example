//
//  HomeVM.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import Foundation

final class HomeVM: ObservableObject {
  @Published var listData: [HomeItemModel] = [
    .init(name: "Extensions", children: [
      .init(name: "CGFloat", route: .cgfloatEx),
      .init(name: "Task", route: .taskEx),
      .init(name: "UIScreen", route: .uiscreenEx),
    ]),
    .init(name: "Utils", children: [
      .init(name: "printLog", route: .printLog),
    ])
  ]
}
