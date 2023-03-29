//
//  DismissKeyboardView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/11/18.
//

import SwiftUI
import Aghs

#if canImport(UIKit)
struct DismissKeyboardView: View {
  @State private var text = ""
  
  var body: some View {
    VStack {
      TextField("Hello, World!", text: $text)
        .textFieldStyle(.roundedBorder)
        .padding()
        
      Button("Dismiss Keyboard") {
        #if canImport(UIKit)
        Aghs.dismissKeyboard()
        #endif
      }
      
      Text("Tap on this view to dismiss keyboard")
        .frame(maxHeight: .infinity)
      
      Spacer()
    }
    .ax.dismissKeyboardOnTap()
  }
}

struct DismissKeyboardView_Previews: PreviewProvider {
  static var previews: some View {
    DismissKeyboardView()
  }
}
#endif
