//
//  ViewFrame.swift
//  Aghs-example
//
//  Created by zzzwco on 2023/5/30.
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

struct ViewFrame: View {
  @State private var topF: CGRect = .zero
  @State private var leftF: CGRect = .zero
  @State private var rightF: CGRect = .zero
  @State private var popButtonFrame: CGRect = .zero
  @EnvironmentObject private var hud: Hud
  
  var body: some View {
    VStack {
      Text("Top")
        .padding(50)
        .border(.red)
        .ax.getFrame { f in
          topF = f
        }
        .overlay(
          Text("x: \(Int(topF.origin.x)), y: \(Int(topF.origin.y))\nw: \(Int(topF.size.width)), h: \(Int(topF.size.height))")
            .font(.footnote)
            .foregroundColor(.red)
        )
      
      HStack {
        Text("Left")
          .padding(60)
          .border(.red)
          .ax.getFrame { f in
            leftF = f
          }
          .overlay(
            Text("x: \(Int(leftF.origin.x)), y: \(Int(leftF.origin.y))\nw: \(Int(leftF.size.width)), h: \(Int(leftF.size.height))")
              .font(.footnote)
              .foregroundColor(.red)
          )
        
        Text("Right")
          .padding(70)
          .border(.red)
          .ax.getFrame { f in
            rightF = f
          }
          .overlay(
            Text("x: \(Int(rightF.origin.x)), y: \(Int(rightF.origin.y))\nw: \(Int(rightF.size.width)), h: \(Int(rightF.size.height))")
              .font(.footnote)
              .foregroundColor(.red)
          )
      }
      
      
      Button("Popover") {
        hud.show(transition: .opacity, backgroundColor: .clear) {
          ZStack(alignment: .topLeading) {
            Color.blue.opacity(0.15)
            ScrollView(.vertical) {
              VStack {
                ForEach(0..<3, id: \.self) {
                  Button($0.formatted()) {
                    hud.hideAll()
                  }
                  .foregroundColor(.white)
                  .frame(width: 80, height: 30)
                }
              }
            }
            .scrollDisabled(true)
            .fixedSize(horizontal: false, vertical: true)
            .background(Color.purple)
            .cornerRadius(10)
            .offset(x: popButtonFrame.origin.x, y: popButtonFrame.origin.y)
          }
          .onTapGesture {
            hud.hideAll()
          }
        }
      }
      .padding()
      .border(.red)
      .ax.getFrame { f in
        popButtonFrame = f
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .border(.red)
  }
}

struct ViewFrame_Previews: PreviewProvider {
  static var previews: some View {
    ViewFrame()
  }
}
