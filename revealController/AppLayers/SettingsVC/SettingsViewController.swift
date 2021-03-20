//
//  SettingsViewController.swift
//  revealController
//
//  Created by User on 20.03.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = SettingModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        tableView.register(UINib(nibName: "LeftRearCell", bundle: nil),
                           forCellReuseIdentifier: "Cell")
    }
}

extension SettingsViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.arrayOfSettings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            as! LeftRearCell
        let item = model.arrayOfSettings[indexPath.row]
        cell.cellConfigure(item: item)
        return cell
    }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            present(model.getAlert(title: "About",
                                   message: "Just a simple flashlight from Michelle Ro)",
                                   cancelButton: false, complession: {}),
                                   animated: true, completion: nil)
        case 1:
            present(model.getAlert(title: "Version",
                                   message: "this is first version of App",
                                   cancelButton: false, complession: {}),
                                   animated: true, completion: nil)
        default:
            break
        }
    }
}
