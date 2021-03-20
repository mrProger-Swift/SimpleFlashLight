//
//  SpringAnimation.swift
//  revealController
//
//  Created by User on 20.03.2021.
//

import Foundation
import Spring
final class SpringAnimation {
  public static  func buttuonViewConfigure(button: SpringButton, name: String? , animation: String, curve: String?){
        button.setTitle(name, for: .normal)
        button.animation = animation
        button.curve = curve ?? ""
        button.animate()
    }

}
