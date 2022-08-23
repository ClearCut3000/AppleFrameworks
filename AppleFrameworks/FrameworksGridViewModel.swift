//
//  FrameworksGridViewModel.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 23.08.2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

  var selectedFaramework: Framework? {
    didSet {
      isShowingDetailView = true
    }
  }

  @Published var isShowingDetailView = false
}
