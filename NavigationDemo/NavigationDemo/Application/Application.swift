//
//  Application.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

final class Application {
   private let rootAssembly: DependencesRegistration = RootAssembly()

}

extension Application: ApplicationProtocol {
   func getRootController() -> UIViewController {
   rootAssembly.registerDependences()
   return rootAssembly.registerRootController()
   }
}
