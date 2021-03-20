//
//  SecondViewController.swift
//  revealController
//
//  Created by User on 20.03.2021.
//

import UIKit
import ChameleonFramework
class SecondViewController: UIViewController {
    
    var model = SecondVCModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GradientColor(gradientStyle: .leftToRight,
                                             frame: UIScreen.main.bounds,
                                             colors: [.white, .blue, .red])
        model.changeBgrnd(view: view)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        tap.numberOfTapsRequired = 2
        view.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        model.arrayOfColors.append(model.arrayOfcolors2.randomElement()!)
        DispatchQueue.global(qos: .background).sync {
            self.model.changeBgrnd(view: self.view)
        }
    }
}
