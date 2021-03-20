//
//  ViewController.swift
//  revealController
//
//  Created by User on 19.03.2021.
//

import UIKit
import Spring
import ChameleonFramework
import PKRevealController
class ViewController: UIViewController {

    @IBOutlet weak var buttonView: SpringButton!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var model = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.updateUI()
        view.backgroundColor = GradientColor(gradientStyle: .topToBottom,
                                             frame: UIScreen.main.bounds,
                                             colors: [.white, .blue, .red])
        SpringAnimation.buttuonViewConfigure(button: buttonView,
                                             name: "Off",
                                             animation: "shake",
                                             curve: "easeInOut")
        buttonView.backgroundColor = .clear
        buttonOutlet.layer.cornerRadius = buttonOutlet.frame.height / 2
        buttonOutlet.backgroundColor = GradientColor(gradientStyle: .radial,
                                                     frame: buttonView.frame,
                                                     colors: [.black, .white])
    }
    
    @IBAction func onOffLightButton(_ sender: Any) {
        model.torch = !model.torch
        
        if model.torch{
            model.updateUI()
            SpringAnimation.buttuonViewConfigure(button: buttonView,
                                                 name: "On",
                                                 animation: "zoomIn",
                                                 curve: "easeInOut")
            buttonOutlet.backgroundColor = GradientColor(gradientStyle: .radial,
                                                         frame: buttonView.frame,
                                                         colors: [.white, .black, .green])
            
        } else {
            SpringAnimation.buttuonViewConfigure(button: buttonView,
                                                 name: "Off",
                                                 animation: "zoomIn",
                                                 curve: "spring")
            buttonOutlet.backgroundColor = GradientColor(gradientStyle: .radial,
                                                         frame: buttonView.frame,
                                                         colors: [.black, .white])
            model.updateUI()

        }
    }
}
