//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 24.08.2022.
//

import SwiftUI

struct FrameworkTitleView: View {
  let framework: Framework

  var body: some View {
    VStack {
      Image(framework.imageName)
        .resizable()
        .frame(width: 90, height: 90)
      Text(framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.5)
    }
    .padding()
  }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
      FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
