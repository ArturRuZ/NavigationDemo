//
//  RootAssembly.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import Foundation
import UIKit

//MARK - Dependences with controllers associations
fileprivate extension ControllersList {
   typealias scope = AssemblyServices
  
   var assembly: Assembly {
      switch self {
      case .textInputScreen:
         return TextInputAssembly(coordinator: scope.coordinator)
      case .textConfirmationScreen(let text):
         return TextConfirmationAssembly(coordinator: scope.coordinator, text: text)
      }
   }
}

//MARK - Services all time in memory
fileprivate enum AssemblyServices {
   static let coordinator: СoordinationDependencesRegstration = Coordinator()
   static let controllerFactory: ControllerBuilderDependencesRegistration = ControllerFacotry()
}

//MARL: - RootAssembly Implementation
final class  RootAssembly {
   fileprivate typealias scope = AssemblyServices
  
   private func registerPropertyDependences() {
//     this place for propery dependences
   }
}


// MARK: - AssemblyDataSource implementation
extension RootAssembly: AssemblyDataSource {
   func getAssembly(key: ControllersList) -> Assembly? {
      return key.assembly
   }
}

// MARK: - DependencesRegistration implementation
extension RootAssembly: DependencesRegistration {
   func registerRootController() -> UIViewController {
      let controllerFactory = AssemblyServices.controllerFactory
      controllerFactory.register(self)
      let controller = controllerFactory.buildRootController()
      return  AssemblyServices.coordinator.registerRootController(controller, factory: controllerFactory)
   }
   func registerDependences() {
      registerPropertyDependences()
   }
}
