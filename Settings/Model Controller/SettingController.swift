//
//  SettingController.swift
//  Settings
//
//  Created by Karl Pfister on 4/9/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import UIKit

class SettingController {
    
    static var sharedInstance = SettingController()
    
    let settings: [Setting] = {
        let music = Setting(name: "iTunes", icon: #imageLiteral(resourceName: "music"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "apps"), isOn: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "books"), isOn: true)
        return [music,appStore,iBooks]
    }()
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
