//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Николай Никитин on 23.08.2022.
//

import SwiftUI

struct FrameworkGridView: View {
  
  //MARK: - View Properties
  @StateObject var viewModel = FrameworkGridViewModel()
  @State private var isGrid = false
  
  //MARK: - View Body
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: viewModel.columns) {
          ForEach(MockData.frameworks) { framework in
            FrameworkTitleView(framework: framework)
              .onTapGesture {
                viewModel.selectedFaramework = framework
              }
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
      .sheet(isPresented: $viewModel.isShowingDetailView) {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFaramework!, isShowingDetailView: $viewModel.isShowingDetailView))
      }
    }
    .accentColor(Color(.label))
  }
}

struct FrameworkGridView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
      .preferredColorScheme(.dark)
    
  }
}
