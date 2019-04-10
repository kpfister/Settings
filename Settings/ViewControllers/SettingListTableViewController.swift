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
        
        return SettingController.sharedInstance.settings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingsTableViewCell else { return UITableViewCell() }
        let setting = SettingController.sharedInstance.settings[indexPath.row]

        cell.cellDelegate = self
        cell.updateViews(with: setting)
        return cell
    }
} // End of class

extension SettingListTableViewController: SettingCellDelegate {
    func settingSwitchTapped(for cell: SettingsTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        SettingController.sharedInstance.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
}
