//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 06.09.2022.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
  
  //MARK: - View Model Propeties
  let framework: Framework
  var isShowingDetailView: Binding<Bool>
  
  //MARK: - View Model init
  init(framework: Framework, isShowingDetailView: Binding<Bool>) {
    self.framework = framework
    self.isShowingDetailView = isShowingDetailView
  }
}
