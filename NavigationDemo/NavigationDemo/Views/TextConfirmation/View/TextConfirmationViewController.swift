//
//  TextConfirmationViewController.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

final class TextConfirmationViewController: UIViewController {
   
   private let viewModel: TextConfirmationPresentable
   @IBOutlet weak var textLabel: UILabel!
   @IBAction func goBackAction(_ sender: UIButton) {
      viewModel.onGoBackRequest()
   }
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.navigationController?.navigationBar.isHidden = true
      self.textLabel.text = viewModel.text
   }
   
   init(viewModel: TextConfirmationPresentable) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
     }
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
    }
}
