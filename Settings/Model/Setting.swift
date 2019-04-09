//
//  Setting.swift
//  Settings
//
//  Created by Karl Pfister on 4/9/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//


import UIKit

class Setting {
    let settingName: String
    let settingIcon: UIImage
    let settingIsOn: Bool
    
    init(settingName: String, settingIcon: UIImage, settingIsOn: Bool) {
        self.settingName = settingName
        self.settingIcon = settingIcon
        self.settingIsOn = settingIsOn
    }
}
