//
//  RecordView.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/25.
//

import Foundation
import UIKit
class RecordViewController: UIViewController {

    @IBOutlet weak var BackButton: UINavigationItem!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var FinishButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "記録をする"
        ContinueButton.setTitle("次の試合を記録する", for: UIControl.State.normal)
        BackButton.title = "ホーム"
    }
    
    @IBAction func ContinueButton(_ sender: Any) {
        let alert = UIAlertController(title: "記録の終了", message: "記録を終了してもよろしいですか？", preferredStyle: .alert)
        
        let delete = UIAlertAction(title: "終了", style: .default, handler: { (action) -> Void in
            print("Delete button tapped")
        })
        
        let cancel = UIAlertAction(title: "キャンセル", style: .cancel, handler: { (action) -> Void in
                print("Cancel button tapped")
            })
            
            alert.addAction(delete)
            alert.addAction(cancel)
            
            self.present(alert, animated: true, completion: nil)
        
    }
    

}
