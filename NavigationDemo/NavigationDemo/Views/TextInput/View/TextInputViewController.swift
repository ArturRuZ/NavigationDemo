//
//  TextInputViewController.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

final class TextInputViewController: UIViewController {
   
  private let viewModel: TextInputPresentable
   
   @IBOutlet weak var textField: UITextField!
   @IBAction func goButtonAction(_ sender: UIButton) {
      viewModel.onConfirmRequested(text: textField.text)
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.navigationController?.navigationBar.isHidden = true
   }
   
   init(viewModel: TextInputPresentable) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
     }
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
    }
}
