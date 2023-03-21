//
//  FileManager.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/26.
//

import Foundation

class AppFileManager:NSObject{
    
    static var path = NSHomeDirectory() + "/Documents"
    static var resultArray:[String] = []
    
    static func saveData(date:String,data:[String]){
        do {
            let pathOneMutch = path + "/" + date + ".txt"
            try data.description.write(toFile: pathOneMutch, atomically: true, encoding: .utf8)
            print("save success")
        } catch {
            print("Error saveData")
        }
    }

    static func getSaveData() -> [String]{
        resultArray.removeAll()
        if let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first {
            do {
                let items = try FileManager.default.contentsOfDirectory(atPath: documentDirectory)
                for item in items {
                    guard let dirURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
                        fatalError("フォルダURL取得エラー")
                    }
                    let fileURL = dirURL.appendingPathComponent(item)
                    guard let fileContents = try? String(contentsOf: fileURL) else {
                        fatalError("ファイル読み込みエラー")
                    }
                    
                    resultArray.append(fileContents)
                    
                }
            } catch _ {
                print("読み込みエラー")
            }
        }
        //print(resultArray)
        return resultArray
    }
    
}
