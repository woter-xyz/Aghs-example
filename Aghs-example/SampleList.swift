//
//  SampleList.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/11.
//

import SwiftUI

struct SampleList: View {
  let data: [SampleListItemData]
  
  init(
    data: [SampleListItemData]
  ) {
    self.data = data
  }
  
  var body: some View {
    List(data, id: \.id) { item in
      Section(item.title) {
        AnyView(item.content)
      }
      .textCase(nil)
    }
  }
}

struct SampleListItemData: Identifiable {
  let id = UUID()
  let title: String
  let content: any View
}

struct SampleList_Previews: PreviewProvider {
  static var previews: some View {
    SampleList(data: [
      .init(title: "1", content: Text("1")),
      .init(title: "Color", content: Color.indigo),
    ])
  }
}
