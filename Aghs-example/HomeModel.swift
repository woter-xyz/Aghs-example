//
//  HomeModel.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import Foundation
import SwiftUI

struct HomeItemModel: Identifiable, Hashable {
  var name: String
  var route: Route?
  var children: [Self]?
  
  let id = UUID()
}

extension HomeItemModel {
  
//  @ViewBuilder var destination: some View {
//    switch self.title {
//      
//    }
//  }
}
