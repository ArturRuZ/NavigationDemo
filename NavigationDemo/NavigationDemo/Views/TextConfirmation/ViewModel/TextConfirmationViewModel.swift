//
//  TextConfirmationViewModel.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import Foundation

final class TextConfirmationViewModel {
   private let delegate: Coordination
   var text: String
   
   init(delegate: Coordination, text: String) {
      self.delegate = delegate
      self.text = text
   }
}

extension TextConfirmationViewModel: TextConfirmationPresentable {
   func onGoBackRequest() {
      delegate.popFromCurrentController()
   }
}
