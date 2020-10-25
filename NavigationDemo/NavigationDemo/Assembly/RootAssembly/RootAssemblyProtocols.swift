//
//  RootAssemblyProtocols.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

protocol AssemblyDataSource: class {
     func getAssembly(key: ControllersList) -> Assembly?
}

protocol DependencesRegistration {
   func registerDependences()
   func registerRootController() -> UIViewController
}
