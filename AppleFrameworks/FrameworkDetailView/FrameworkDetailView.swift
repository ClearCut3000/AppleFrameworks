//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 23.08.2022.
//

import SwiftUI

struct FrameworkDetailView: View {

  //MARK: - View Properties
  @ObservedObject var viewModel: FrameworkDetailViewModel

  //MARK: - View Body
  var body: some View {
    VStack {
      XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
      Spacer()
      FrameworkTitleView(framework: viewModel.framework)
      Text(viewModel.framework.description)
        .font(.body)
        .padding()
      Spacer()

      Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "https://en.wikipedia.org/wiki/HTTP_404")!) {
        AFButton(title: "Learn more")
      }
    }
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
      .preferredColorScheme(.dark)
  }
}
