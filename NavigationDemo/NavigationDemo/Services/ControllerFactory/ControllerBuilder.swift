//
//  ControllerBuilder.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

protocol ControllerBuilder: class {
    func buildController(for key: ControllersList) -> UIViewController
    func buildRootController() -> UIViewController
}

protocol ControllerBuilderDependencesRegistration: ControllerBuilder {
  func register (_ dataSource: AssemblyDataSource)
}
