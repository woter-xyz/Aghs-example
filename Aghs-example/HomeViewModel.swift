//
//  HomeVM.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import Foundation

final class HomeViewModel: ObservableObject {
  
  @Published var listData: [HomeItemModel] = [
    .init(name: "ViewModifiers", children: [
      .init(route: .viewFrame),
      .init(route: .hud),
      .init(route: .conditional),
      .init(route: .roundCorner),
      .init(route: .customNavBackButton),
      .init(route: .viewStatus)
    ]),
    .init(name: "Utils", children: [
      .init(route: .debugPrint),
      .init(route: .dismissKeyboard),
      .init(route: .networkStatus)
    ])
  ]
  
  #if os(macOS)
  @Published var selection: HomeItemModel?
  #endif
}
