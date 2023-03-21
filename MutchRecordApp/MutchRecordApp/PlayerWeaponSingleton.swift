//
//  PlayerWeapon.Singletonswift.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/26.
//

import Foundation

class PlayerWeaponSingleton {
    var date = ""
    var playerWeapon1 = ""
    var playerWeapon2 = ""
    var playerWeapon3 = ""
    var playerWeapon4 = ""
    
    private init() { }
    static let shared = PlayerWeaponSingleton()
    
    /*
     使い方　例
     print(PlayerWeaponSingleton.shared.str)
     */
}
