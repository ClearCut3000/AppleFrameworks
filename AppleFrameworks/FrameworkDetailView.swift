//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 23.08.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
  var framework: Framework

  var body: some View {
    VStack {
      HStack {
        Spacer()
        Button {

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
    FrameworkDetailView(framework: MockData.sampleFramework)
      .preferredColorScheme(.dark)
  }
}
