//
//  SettingListTableViewController.swift
//  Settings
//
//  Created by Karl Pfister on 4/9/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return SettingController.settings.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingsTableViewCell else { return UITableViewCell() }
        let setting = SettingController.settings[indexPath.row]
        
        cell.settingNameLabel.text = setting.settingName
        cell.settingIconImageView.image = setting.settingIcon
        cell.settingSwitch.isOn = setting.settingIsOn
        
        return cell
    }
}
