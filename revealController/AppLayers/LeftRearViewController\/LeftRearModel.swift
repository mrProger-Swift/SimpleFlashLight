//
//  LeftRearModel.swift
//  revealController
//
//  Created by User on 20.03.2021.
//

import UIKit
class LeftRearModel{
    
    var window : UIWindow?
    var arrayOfButton = ["Torch", "Gradient", "ScreenTorch", "Settings"]

    func rootVCSetup(controller: UIViewController){
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
