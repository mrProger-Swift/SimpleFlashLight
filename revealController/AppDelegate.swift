//
//  AppDelegate.swift
//  revealController
//
//  Created by User on 19.03.2021.
//

import UIKit
import PKRevealController
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let controller = PKRevealController(frontViewController: ViewController(), leftViewController: LeftRearViewController())        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController =  controller
        window?.makeKeyAndVisible()
        return true
    }



}

