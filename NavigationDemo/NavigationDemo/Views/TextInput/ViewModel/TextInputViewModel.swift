//
//  TextInputViewModel.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import Foundation

final class TextInputViewModel {
   private let delegate: Coordination
   
   init(delegate: Coordination) {
      self.delegate = delegate
   }
}

extension TextInputViewModel: TextInputPresentable {
   func onConfirmRequested(text: String?) {
      delegate.show(view: .textConfirmationScreen(text: text ?? ""), firstPosition: false)
   }
}
