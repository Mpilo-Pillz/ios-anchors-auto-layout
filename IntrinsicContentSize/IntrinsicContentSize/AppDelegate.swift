//
//  AppDelegate.swift
//  IntrinsicContentSize
//
//  Created by Mpilo Pillz on 2022/09/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.makeKeyAndVisible()
            window?.backgroundColor = .orange

//            window?.rootViewController = ViewController()
//            window?.rootViewController = HuggingCompressionViewController()
            window?.rootViewController = CHHCWithImageViewController()
            
            
            return true
        }


}

