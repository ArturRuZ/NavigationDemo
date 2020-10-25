//
//  Coordinator.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

final class Coordinator {
   
   private var navigationController = UINavigationController()
   private var factory: ControllerBuilder?
   
   //MARK:- Private Methods
    private func navigateWithFirstPositionInStack(to: UIViewController) {
      navigationController.viewControllers = [to]
    }
    private func navigate(to: UIViewController) {
       navigationController.pushViewController(to, animated: true)
    }
}

extension Coordinator: Coordination {
   func popFromCurrentController() {
      navigationController.popViewController(animated: true)
   }
   func show(view: ControllersList, firstPosition: Bool) {
      guard let controller = factory?.buildController(for: view) else { return }
                 firstPosition ?  navigateWithFirstPositionInStack(to: controller) : navigate(to: controller)
   }
}

extension Coordinator: СoordinationDependencesRegstration {
   func registerRootController(_ controller: UIViewController, factory: ControllerBuilder) -> UIViewController {
      navigateWithFirstPositionInStack(to: controller)
      self.factory = factory
      return navigationController
   }
}
