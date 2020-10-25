//
//  ControllerFactory.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

final class ControllerFacotry {
   private weak var assemblyDataSource: AssemblyDataSource?
   
}

extension ControllerFacotry: ControllerBuilderDependencesRegistration {
   func register(_ dataSource: AssemblyDataSource) {
      self.assemblyDataSource = dataSource
   }
   
   func buildRootController() -> UIViewController {
      buildController(for: .textInputScreen)
   }

   func buildController(for key: ControllersList) -> UIViewController {
      guard let assembly = assemblyDataSource?.getAssembly(key: key) else { return UIViewController() }
      return assembly.build()
      }
}
