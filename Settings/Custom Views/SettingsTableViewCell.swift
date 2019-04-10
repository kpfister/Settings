//
//  SettingsTableViewCell.swift
//  Settings
//
//  Created by Karl Pfister on 4/9/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: class {
    func settingSwitchTapped(for cell: SettingsTableViewCell)
}

class SettingsTableViewCell: UITableViewCell {

    // MARK - Properties
    
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // Delegate
    weak var cellDelegate: SettingCellDelegate?
  
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.settingIcon
        settingNameLabel.text = setting.settingName
        self.backgroundColor = settingSwitch.isOn ? .cyan : .white
    }

    @IBAction func settingSwitchToggled(_ sender: Any) {
        cellDelegate?.settingSwitchTapped(for: self)
    }
}
