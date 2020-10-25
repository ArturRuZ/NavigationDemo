//
//  TextConfirmationAssembly.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

final class TextConfirmationAssembly: Assembly {
   private let text: String
   private let coordinator: Coordination
   
   init(coordinator: Coordination, text: String) {
      self.text = text
      self.coordinator = coordinator
   }
   
   func build() -> UIViewController {
      let viewModel = TextConfirmationViewModel(delegate: coordinator, text: text)
      return TextConfirmationViewController(viewModel: viewModel)
   }
}
