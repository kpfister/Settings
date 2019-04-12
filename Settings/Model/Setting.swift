//
//  Setting.swift
//  Settings
//
//  Created by Karl Pfister on 4/9/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//


import UIKit

class Setting {
    
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
