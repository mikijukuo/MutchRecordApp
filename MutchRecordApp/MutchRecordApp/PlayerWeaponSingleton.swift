//
//  PlayerWeapon.Singletonswift.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/26.
//

import Foundation

class PlayerWeaponSingleton {
    
    var yunohanaWinCount = 0
    var yunohanaLoseCount = 0
    var gonnzuiWinCount = 0
    var gonnzuiLoseCount = 0
    var mategaiWinCount = 0
    var mategaiLoseCount = 0
    var yagaraWinCount = 0
    var yagaraLoseCount = 0
    var namerouWinCount = 0
    var namerouLoseCount = 0
    var amabiWinCount = 0
    var amabiLoseCount = 0
    var hirameWinCount = 0
    var hirameLoseCount = 0
    
    var date = ""
    var lastStage = ""
    var playerWeapon1 = ""
    var playerWeapon2 = ""
    var playerWeapon3 = ""
    var playerWeapon4 = ""
    
    private init() { }
    static let shared = PlayerWeaponSingleton()
    
    static func resetResultCount(){
        
        PlayerWeaponSingleton.shared.yunohanaWinCount = 0
        PlayerWeaponSingleton.shared.yunohanaLoseCount = 0
        PlayerWeaponSingleton.shared.gonnzuiWinCount = 0
        PlayerWeaponSingleton.shared.gonnzuiLoseCount = 0
        PlayerWeaponSingleton.shared.mategaiWinCount = 0
        PlayerWeaponSingleton.shared.mategaiLoseCount = 0
        PlayerWeaponSingleton.shared.yagaraWinCount = 0
        PlayerWeaponSingleton.shared.yagaraLoseCount = 0
        PlayerWeaponSingleton.shared.namerouWinCount = 0
        PlayerWeaponSingleton.shared.namerouLoseCount = 0
        PlayerWeaponSingleton.shared.amabiWinCount = 0
        PlayerWeaponSingleton.shared.amabiLoseCount = 0
        PlayerWeaponSingleton.shared.hirameWinCount = 0
        PlayerWeaponSingleton.shared.hirameLoseCount = 0
    }
    
    /*
     使い方　例
     print(PlayerWeaponSingleton.shared.str)
     */
}
