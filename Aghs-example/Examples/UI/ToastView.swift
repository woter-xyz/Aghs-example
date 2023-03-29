//
//  TipView.swift
//  Aghs-example
//
//  Created by Bruce on 2022/12/2.
//

import SwiftUI
import Aghs

struct ToastView: View {
  @State private var top1 = false
  @State private var top2 = false
  @State private var top3 = false
  @State private var isPrenseted2 = false
  @State private var isPrenseted3 = false
  
  var body: some View {
    VStack(spacing: 20) {
      
      Button("Loading") {
        isPrenseted2.toggle()
      }
      
      Button("Bottom") {
        withAnimation {
          isPrenseted3.toggle()
        }
      }
      
      Spacer()
      HStack {
        Button("Top1") {
          top1 = true
        }
        Button("Top2") {
          top2 = true
        }
        Button("Top3") {
          top3 = true
        }
      }

    }
    .ax.toast(isPresented: $top1, style: .default(duration: 1), position: .top) {
      RoundedRectangle(cornerRadius: 10)
        .foregroundColor(.red)
        .frame(width: 100, height: 36)
        .offset(y: 0)
    }
    .ax.toast(isPresented: $top2, style: .default(duration: 3), position: .top) {
      RoundedRectangle(cornerRadius: 10)
        .foregroundColor(.red)
        .frame(width: 100, height: 36)
        .offset(y: 50)
    }
  }
}

struct TipView_Previews: PreviewProvider {
  static var previews: some View {
    ToastView()
  }
}
