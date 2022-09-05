//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 23.08.2022.
//

import SwiftUI

struct AFButton: View {

  //MARK: - View Properties
  var title: String
  
  //MARK: - View Body
  var body: some View {
    Text(title)
      .font(.title2)
      .fontWeight(.semibold)
      .frame(width: 280, height: 50)
      .background(.red)
      .foregroundColor(.white)
      .cornerRadius(10)
  }
}

struct AFButton_Previews: PreviewProvider {
  static var previews: some View {
    AFButton(title: "Test")
  }
}
