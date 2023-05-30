//
//  HudView.swift
//  Aghs-example
//
//  Created by zzzwco on 2023/5/25.
//
//  Copyright (c) 2021 zzzwco <zzzwco@outlook.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import SwiftUI
import Aghs

struct HudView: View {
  @EnvironmentObject private var hud: Hud
  
  var body: some View {
    VStack(spacing: 30) {
      
      Button("Show 1") {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
          hud.show(
            id: 1,
            animation: .spring(),
            transition: .move(edge: .bottom),
            alignment: .bottom,
            ignoresSafeAreaEdges: .bottom
          ) {
            hudView(title: "Dimiss 1") {
              hud.hide(id: 1)
            }
          }
        }
      }
      
      Button("Show 2") {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
          hud.show(
            id: "two",
            animation: .linear(duration: 1),
            transition: .slide.combined(with: .opacity),
            interactiveHide: true
          ) {
            hudView(title: "Dimiss 2") {
              hud.hide(id: "two")
            }
          }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
          hud.show(
            id: "three",
            transition: .move(edge: .leading).combined(with: .opacity),
            alignment: .leading,
            backgroundColor: .purple.opacity(0.5)
          ) {
            hudView(title: "Dimiss 3") {
              hud.hide(id: "three")
            }
          }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
          hud.hide(id: 1)
        }
      }
      
      Button("Show to hide all") {
        hud.show(alignment: .top, interactiveHide: true) {
          hudView(title: "Hide all") {
            hud.hideAll()
          }
        }
      }
    }
  }
  
  private func hudView(title: String, dismiss: @escaping () -> Void) -> some View {
    Button(title) {
      dismiss()
    }
    .padding()
    .background(Color.white)
    .clipShape(RoundedRectangle(cornerRadius: 8))
  }

}

struct hudView_Previews: PreviewProvider {
  static var previews: some View {
    HudView()
  }
}
