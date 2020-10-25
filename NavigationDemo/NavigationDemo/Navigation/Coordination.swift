//
//  Coordination.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

protocol Coordination {
   func show(view: ControllersList, firstPosition: Bool)
   func popFromCurrentController()
}
protocol СoordinationDependencesRegstration: Coordination {
   func registerRootController(_ controller: UIViewController, factory: ControllerBuilder) -> UIViewController
}
