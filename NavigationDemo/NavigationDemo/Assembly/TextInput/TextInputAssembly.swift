//
//  TextInputAssembly.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

final class TextInputAssembly: Assembly {
   private let coordinator: Coordination
   
   init(coordinator: Coordination) {
      self.coordinator = coordinator
   }
   
   func build() -> UIViewController {
      let viewModel = TextInputViewModel(delegate: coordinator)
      return TextInputViewController(viewModel: viewModel)
   }
}
