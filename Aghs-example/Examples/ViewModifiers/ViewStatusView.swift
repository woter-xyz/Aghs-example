//
//  ViewStatusView.swift
//  Aghs-example
//
//  Created by zzzwco on 2023/5/11.
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

import SwiftUI

public class MyViewModel: ObservableObject {
  @Published var viewStatus: ViewStatusManager = .init()
  
  public func fetchData() {
    viewStatus.isLoading = true
    
    // 模拟异步请求
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      self.viewStatus.isLoading = false
      if Bool.random() {
        self.viewStatus.isEmpty = true
      } else {
        self.viewStatus.isToast = true
      }
    }
  }
}

struct MyView: View {
  @StateObject var viewModel: MyViewModel
  
  var body: some View {
    VStack {
      Button("Fetch Data") {
        viewModel.fetchData()
      }
      Button("Toast") {
        viewModel.viewStatus.isToast = true
      }
      Button("Toast") {
        viewModel.viewStatus.isToast = true
      }
      Button("Toast") {
        viewModel.viewStatus.isToast = true
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .ax.viewStatus(viewModel.viewStatus) {
      Text("Empty")
    } toastView: {
      Circle().fill(.blue).frame(width: 40, height: 40)
        .offset(x: .random(in: 10...30), y: .random(in: 10...30))
    } loadingView: {
      ProgressView()
    }
  }
}
