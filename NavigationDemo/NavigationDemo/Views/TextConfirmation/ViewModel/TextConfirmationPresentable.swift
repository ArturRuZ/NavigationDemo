//
//  TextConfirmationPresentable.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import Foundation

protocol TextConfirmationPresentable {
   var text: String {get}
   func onGoBackRequest()
}
