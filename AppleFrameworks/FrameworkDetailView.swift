//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 23.08.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
  var framework: Framework

  @Binding var isShowingDetailView: Bool

  var body: some View {
    VStack {
      HStack {
        Spacer()
        Button {
          isShowingDetailView = false
        } label: {
          Image(systemName: "xmark")
            .foregroundColor(Color(.label))
            .imageScale(.large)
            .frame(width: 44, height: 44)
        }
      }
      .padding()
      Spacer()
      FrameworkTitleView(framework: framework)
      Text(framework.description)
        .font(.body)
        .padding()
      Spacer()
      Button {

      } label: {
        AFButton(title: "Learn more")
      }
    }

  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
      .preferredColorScheme(.dark)
  }
}
