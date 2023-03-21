//
//  CalculateData.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/03/21.
//

import Foundation

class CalculateData{
    

    static func countWinData(){
        
        PlayerWeaponSingleton.resetResultCount()
        
            var resultArray = AppFileManager.getSaveData()
            
            for array in resultArray {
                if array.contains("ユノハナ大渓谷"){
                    if array.contains("WIN"){
                        PlayerWeaponSingleton.shared.yunohanaWinCount = PlayerWeaponSingleton.shared.yunohanaWinCount + 1
                    }else{
                        PlayerWeaponSingleton.shared.yunohanaLoseCount = PlayerWeaponSingleton.shared.yunohanaLoseCount + 1
                    }
                }else if array.contains("ゴンズイ地区"){
                    if array.contains("WIN"){
                        PlayerWeaponSingleton.shared.gonnzuiWinCount = PlayerWeaponSingleton.shared.gonnzuiWinCount + 1
                    }else{
                        PlayerWeaponSingleton.shared.gonnzuiLoseCount = PlayerWeaponSingleton.shared.gonnzuiLoseCount + 1
                    }
                }else if array.contains("マテガイ放水路"){
                    if array.contains("WIN"){
                        PlayerWeaponSingleton.shared.mategaiWinCount = PlayerWeaponSingleton.shared.mategaiWinCount + 1
                    }else{
                        PlayerWeaponSingleton.shared.mategaiLoseCount = PlayerWeaponSingleton.shared.mategaiLoseCount + 1
                    }
                }else if array.contains("ヤガラ市場"){
                    if array.contains("WIN"){
                        PlayerWeaponSingleton.shared.yagaraWinCount = PlayerWeaponSingleton.shared.yagaraWinCount + 1
                    }else{
                        PlayerWeaponSingleton.shared.yagaraLoseCount = PlayerWeaponSingleton.shared.yagaraLoseCount + 1
                    }
                }else if array.contains("ナメロウ金属"){
                    if array.contains("WIN"){
                        PlayerWeaponSingleton.shared.namerouWinCount = PlayerWeaponSingleton.shared.namerouWinCount + 1
                    }else{
                        PlayerWeaponSingleton.shared.namerouLoseCount = PlayerWeaponSingleton.shared.namerouLoseCount + 1
                    }
                }else if array.contains("アマ美術大学"){
                    if array.contains("WIN"){
                        PlayerWeaponSingleton.shared.amabiWinCount = PlayerWeaponSingleton.shared.amabiWinCount + 1
                    }else{
                        PlayerWeaponSingleton.shared.amabiLoseCount = PlayerWeaponSingleton.shared.amabiLoseCount + 1
                    }
                }else if array.contains("ヒラメが丘団地"){
                    if array.contains("WIN"){
                        PlayerWeaponSingleton.shared.hirameWinCount = PlayerWeaponSingleton.shared.hirameWinCount + 1
                    }else{
                        PlayerWeaponSingleton.shared.hirameLoseCount = PlayerWeaponSingleton.shared.hirameLoseCount + 1
                    }
                }
            }
        resultArray.removeAll()
    }
}
