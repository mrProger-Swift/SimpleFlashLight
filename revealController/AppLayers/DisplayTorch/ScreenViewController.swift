//
//  ScreenViewController.swift
//  revealController
//
//  Created by User on 20.03.2021.
//

import UIKit
import ChameleonFramework
import Spring
class ScreenViewController: UIViewController {
    @IBOutlet weak var buttonView: SpringButton!
    @IBOutlet weak var button: UIButton!
    
    var torch = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        SpringAnimation.buttuonViewConfigure(button: buttonView,
                                             name: "Off",
                                             animation: "shake",
                                             curve: "easeInOut")
        buttonView.backgroundColor = .clear
        button.layer.cornerRadius = button.frame.height / 2
        button.backgroundColor = GradientColor(gradientStyle: .radial,
                                               frame: buttonView.frame,
                                               colors: [.black, .white])
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        torch = !torch
        if torch{
            SpringAnimation.buttuonViewConfigure(button: buttonView,
                                                 name: "On",
                                                 animation: "zoomIn",
                                                 curve: "easeInOut")
            button.backgroundColor = GradientColor(gradientStyle: .radial,
                                                   frame: buttonView.frame,
                                                   colors: [.white, .black, .green])
            view.backgroundColor = .white
        } else {
            SpringAnimation.buttuonViewConfigure(button: buttonView,
                                                 name: "Off",
                                                 animation: "zoomIn",
                                                 curve: "spring")
            button.backgroundColor = GradientColor(gradientStyle: .radial,
                                                   frame: buttonView.frame,
                                                   colors: [.black, .white])
            view.backgroundColor = .green
        }
    }
}



