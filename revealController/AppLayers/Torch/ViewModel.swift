//
//  ViewModel.swift
//  revealController
//
//  Created by User on 20.03.2021.
//

import Foundation
import AVFoundation


class ViewModel {
    var torch = false
    
    @objc func updateUI() {
         let device = AVCaptureDevice.default(for: .video)
         if let device = device {
             do {
                 try device.lockForConfiguration()
                 device.torchMode = torch ? .on : .off
                 device.unlockForConfiguration()
             } catch {
                 print(error)
             }
         } else {
         }
     }
}
