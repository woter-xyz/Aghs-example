//
//  TipView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/12/2.
//

import SwiftUI
import Aghs

struct ToastView: View {
  @State private var top = false
  @State private var bottom = false
  @State private var loading = false
  @State private var loading2 = false
  
  var body: some View {
    VStack {
      HStack {
        Button("Top") {
          top = true
        }
        
        Button("Bottom") {
          bottom = true
        }
        
        Button("Loading") {
          loading.toggle()
        }
      }
      .padding(.bottom, 50)
      
      Button("Loading2") {
        loading2.toggle()
      }
      Text("Hello")
        .frame(width: 200, height: 100)
        .border(.blue)
        .ax.toast(isPresented: $loading2, style: .loading, position: .center) {
          ProgressView()
        }
    }
    .frame(width: 300, height: 500)
    .border(.red)
    .ax.toast(isPresented: $top, style: .default(duration: 1), position: .top) {
      RoundedRectangle(cornerRadius: 10)
        .foregroundColor(.red)
        .frame(width: 100, height: 36)
        .offset(y: 44)
    }
    .ax.toast(isPresented: $bottom, style: .default(duration: 2), position: .bottom) {
      RoundedRectangle(cornerRadius: 10)
        .foregroundColor(.red)
        .frame(width: 100, height: 36)
    }
    .ax.toast(isPresented: $loading, style: .loading, position: .center) {
      ProgressView()
    }
  }
}

struct TipView_Previews: PreviewProvider {
  static var previews: some View {
    ToastView()
  }
}
