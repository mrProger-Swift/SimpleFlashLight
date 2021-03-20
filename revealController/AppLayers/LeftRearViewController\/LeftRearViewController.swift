//
//  LeftRearViewController.swift
//  revealController
//
//  Created by User on 19.03.2021.
//

import UIKit
import PKRevealController
import ChameleonFramework
class LeftRearViewController: UIViewController, PKRevealing {
    var model = LeftRearModel()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        revealController.delegate = self
        tableView.register(UINib(nibName: "LeftRearCell", bundle: nil), forCellReuseIdentifier: LeftRearCell.reusableId)
        self.revealController.setMinimumWidth(170.0, maximumWidth: 170, for: self)
        tableView.backgroundColor = UIColor.black
        
    }
}
extension LeftRearViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.arrayOfButton.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LeftRearCell.reusableId,
                                                 for: indexPath) as! LeftRearCell
        let item = model.arrayOfButton[indexPath.row]
        cell.cellConfigure(item: item)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row{
        case 0:  let controller = PKRevealController(frontViewController: ViewController(),
                                                     leftViewController: LeftRearViewController())
            model.rootVCSetup(controller: controller!)
        case 1:  let controller = PKRevealController(frontViewController: SecondViewController(),
                                                     leftViewController: LeftRearViewController())
            model.rootVCSetup(controller: controller!)
        case 2: let controller = PKRevealController(frontViewController: ScreenViewController(),
                                                    leftViewController: LeftRearViewController())
            model.rootVCSetup(controller: controller!)
        case 3: let controller = PKRevealController(frontViewController: UINavigationController.init(rootViewController:                                                              SettingsViewController()),
                                                    leftViewController: LeftRearViewController())
            model.rootVCSetup(controller: controller!)
        default:
            break
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       70
   }
}
