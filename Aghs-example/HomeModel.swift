//
//  HomeModel.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import Foundation
import SwiftUI

struct HomeItemModel: Identifiable, Hashable {
  var name: String?
  var route: Route?
  var children: [Self]?
  
  var id: Self { self }
}

extension HomeItemModel {
  
  var displayName: String {
    if let name {
      return name
    }
    if let route {
      return route.rawValue
    }
    return "Unknown"
  }
}
