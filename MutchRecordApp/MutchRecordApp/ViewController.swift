//
//  ViewController.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toRecordViewButton: UIButton!
    @IBOutlet weak var toShowRecordView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ホーム"
        toRecordViewButton.setTitle("記録する", for: UIControl.State.normal)
        toShowRecordView.setTitle("記録を見る", for: UIControl.State.normal)

    }

    @IBAction func toRecordViewAction(_ sender: Any) {
        
    }
    
    @IBAction func toShowRecordViewAction(_ sender: Any) {
        CalculateData.countWinData()
    }

}

