//
//  AppDelegate.swift
//  navigationDemo
//
//  Created by Артур Ружников on 25.10.2020.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   var window: UIWindow?
   private var app: ApplicationProtocol?

   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      window = UIWindow()
      app = Application()
      window?.rootViewController = app?.getRootController()
      window?.makeKeyAndVisible()
      if #available(iOS 13.0, *) {
          window?.overrideUserInterfaceStyle = .light
        }
      return true
   }
}

