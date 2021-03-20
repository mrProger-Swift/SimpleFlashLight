//
//  SecondVCModel.swift
//  revealController
//
//  Created by User on 20.03.2021.
//

import UIKit
import ChameleonFramework
class SecondVCModel {
    
    var arrayOfcolors2 : [UIColor] = [.cyan, .darkGray, .gray, .green, .magenta, .yellow, .white, .blue, .red]
    var arrayOfColors: [UIColor] = [.black, .blue, .brown, .cyan]
    
    func retrunrColor()->UIColor{
        arrayOfColors.randomElement()!
    }
    
func changeBgrnd(view: UIView){
    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { [weak self] _ in
        UIView.animate(withDuration: 0, delay: 0, options: .curveEaseIn) {
        } completion: { _ in
            guard let self = self else {return}
            view.backgroundColor = GradientColor(gradientStyle: .leftToRight,
                                                      frame: UIScreen.main.bounds.integral,
                                                      colors: [self.retrunrColor(),
                                                               self.retrunrColor(),
                                                               self.retrunrColor(),
                                                               self.retrunrColor(),
                                                               self.retrunrColor() ])
        }
    }
}
}
