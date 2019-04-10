//
//  SettingController.swift
//  Settings
//
//  Created by Karl Pfister on 4/9/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    static let sharedInstance = SettingController()
    
      var settings: [Setting] {
        let music = Setting(settingName: "iTunes", settingIcon: #imageLiteral(resourceName: "music"), settingIsOn: false)
        let appStore = Setting(settingName: "App Store", settingIcon: #imageLiteral(resourceName: "apps"), settingIsOn: false)
        let iBooks = Setting(settingName: "iBooks", settingIcon: #imageLiteral(resourceName: "books"), settingIsOn: true)
        return[music,appStore,iBooks]
    }
    
    func toggleIsOn(for setting: Setting) {
        setting.settingIsOn = !setting.settingIsOn
    }
}
