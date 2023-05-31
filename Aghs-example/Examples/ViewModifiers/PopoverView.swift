//
//  PopoverView.swift
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

struct PopoverView: View {
  @State private var isPresented = false
  @State private var offsetX: CGFloat = 0
  @State private var offsetY: CGFloat = 0
  @State private var sourceFrame: CGRect = .zero
  private var max: Int { .random(in: 3...6) }
  
  var body: some View {
    ScrollView {
      VStack {
        Text("")
          .frame(height: 500)
        
        VStack {
          Button("Change") {
            offsetX = .random(in: -100...100)
            offsetY = .random(in: -200...200)
          }
          
          Button("Show") {
            isPresented = true
          }
          .padding()
          .border(.red)
          .ax.popover(isPresented: $isPresented) {
            popoverContent
          }
        }
        .offset(x: offsetX, y: offsetX)
        
        Text("")
          .frame(height: 1000)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    .animation(.default, value: offsetX)
    .animation(.default, value: offsetY)
  }
  
  @ViewBuilder private var popoverContent: some View {
    if Bool.random() {
      ScrollView(.vertical) {
        VStack {
          ForEach(0..<max, id: \.self) { v in
            Button {
              isPresented = false
            } label: {
              Text(v.formatted())
                .padding(.horizontal, .random(in: 50...80))
                .padding(.vertical, .random(in: 5...15))
                .foregroundColor(.white)
                .font(.title)
            }
          }
        }
      }
      .scrollDisabled(true)
      .fixedSize(horizontal: false, vertical: true)
      .background(Color.purple)
      .cornerRadius(10)
    } else {
      ScrollView(.vertical) {
        VStack {
          ForEach(0..<max, id: \.self) { v in
            Button {
              isPresented = false
            } label: {
              Text(v.formatted())
                .padding(.horizontal, .random(in: 50...80))
                .padding(.vertical, .random(in: 5...15))
                .foregroundColor(.white)
                .font(.title)
            }
          }
        }
      }
      .frame(height: 150)
      .background(Color.purple)
      .cornerRadius(10)
    }
  }
}

struct PopoverView_Previews: PreviewProvider {
  static var previews: some View {
    PopoverView()
  }
}
