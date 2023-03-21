//
//  FileManager.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/26.
//

import Foundation

class AppFileManager:NSObject{
    
    static var path = NSHomeDirectory() + "/Documents"
    
    static func saveData(date:String,data:[String]){
        do {
            let pathOneMutch = path + "/" + date + ".txt"
            try data.description.write(toFile: pathOneMutch, atomically: true, encoding: .utf8)
            print("save success")
        } catch {
            print("Error saveData")
        }
    }
    
    static func readSaveData(){
        if let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first {
            do {
                let items = try FileManager.default.contentsOfDirectory(atPath: documentDirectory)
                print(items)
            } catch _ {
                print("読み込みエラー")
            }
        }
    }
    
    static func createFolder(name:String){
        let fileURL = URL(fileURLWithPath: path)
        do {
            try name.write(to: fileURL.appendingPathComponent(name),atomically: true,encoding: .utf8)
        } catch{
            print("書き込み失敗")
        }
    }
}
