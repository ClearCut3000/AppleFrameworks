//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 23.08.2022.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
      FrameworkTitleView(name: "App Clips", imageName: "app-clip")
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
  let name: String
  let imageName: String

  var body: some View {
    VStack {
      Image(imageName)
        .resizable()
        .frame(width: 90, height: 90)
      Text(name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.5)
    }
  }
}
