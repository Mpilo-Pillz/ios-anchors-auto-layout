//
//  AppDelegate.swift
//  AnchorsLab
//
//  Created by Mpilo Pillz on 2022/09/18.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .orange
//        window?.rootViewController = ViewController()
//        window?.rootViewController = SafeAreaViewController()
//        window?.rootViewController = MarginDefaultViewController()
        window?.rootViewController = SpacerViewViewController()
        
        
        return true
    }
}

