//
//  HudManagerView.swift
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

struct HudManagerView: View {
  @EnvironmentObject private var hudManager: HudManager
  
  var body: some View {
    VStack(spacing: 30) {
      
      Button("Show 1") {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
          hudManager.show(id: 1, animation: .spring(), transition: .scale) {
            hudView(title: "Dimiss 1", offsetY: -100) {
              hudManager.hide(id: 1)
            }
          }
        }
      }
      
      Button("Show 2") {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
          hudManager.show(id: "two", animation: .linear(duration: 1), transition: .slide.combined(with: .opacity), interactiveHide: true) {
            hudView(title: "Dimiss 2", offsetY: 0) {
              hudManager.hide(id: "two")
            }
          }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
          hudManager.show(id: "three", backgroundColor: .purple.opacity(0.5)) {
            hudView(title: "Dimiss 3", offsetY: 100) {
              hudManager.hide(id: "three")
            }
          }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
          hudManager.hide(id: 1)
        }
      }
      
      Button("Show to hide all") {
        hudManager.show(interactiveHide: true) {
          hudView(title: "Hide all", offsetY: 200) {
            hudManager.hideAll()
          }
        }
      }
    }
  }
  
  private func hudView(title: String, offsetY: CGFloat, dismiss: @escaping () -> Void) -> some View {
    Button(title) {
      dismiss()
    }
    .padding()
    .background(Color.white)
    .clipShape(RoundedRectangle(cornerRadius: 8))
    .offset(y: offsetY)
  }

}

struct HudManagerView_Previews: PreviewProvider {
  static var previews: some View {
    HudManagerView()
  }
}
