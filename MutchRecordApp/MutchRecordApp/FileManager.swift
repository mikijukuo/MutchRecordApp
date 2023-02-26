//
//  FileManager.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/26.
//

import Foundation

class FileManager:NSObject{
    
    //static let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
    static let path = NSHomeDirectory() + "/Documents/Result.txt"
    
    static func saveData(data:[String]){
        do {
            try data.description.write(toFile: path, atomically: true, encoding: .utf8)
            print("save success")
        } catch {
           print("Error saveData")
        }
    }
    
    static func readSaveData(){
        let fileURL = URL(fileURLWithPath: path)
        guard let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) else {
                  fatalError("読み込み出来ません")
              }
        print(fileContents)
    }
}
